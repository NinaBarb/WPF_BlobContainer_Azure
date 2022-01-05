using Azure.Storage;
using Azure.Storage.Blobs.Models;
using RemoteFileManager.Dao;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RemoteFileManager.ViewModels
{
    class ItemsViewModel
    {
        public const string ForwardSlash = "/";
        private string directory;
        public ObservableCollection<BlobItem> Items { get; set; }
        public ObservableCollection<string> Directories { get; set; }
        public string Directory 
        { 
            get => directory;
            set
            {
                directory = value;
                Refresh();
            }
        }

        public ItemsViewModel()
        {
            Items = new ObservableCollection<BlobItem>();
            Directories = new ObservableCollection<string>();
            Refresh();
        }

        private void Refresh()
        {
            Directories.Clear();
            Items.Clear();
            Repository.Container.GetBlobs().ToList().ForEach(item =>
            {
                if (item.Name.Contains(ForwardSlash))
                {
                    string dir = item.Name.Substring(0, item.Name.LastIndexOf(ForwardSlash));
                    if (!Directories.Contains(dir))
                    {
                        Directories.Add(dir);
                    }
                }

                if (string.IsNullOrEmpty(Directory) && !item.Name.Contains(ForwardSlash))
                {
                    Items.Add(item);
                }
                else if(!string.IsNullOrEmpty(Directory) && item.Name.Contains(ForwardSlash) && item.Name.Contains($"{Directory}{ForwardSlash}"))
                {
                    Items.Add(item);
                }
            });
        }

        public async Task DeleteAsync(BlobItem blobItem)
        {
            await Repository.Container.GetBlobClient(blobItem.Name).DeleteAsync();
            Refresh();
        }

        public async Task DownloadAsync(BlobItem blobItem, string filename)
        {
            using (var fs = File.OpenWrite(filename))
            {
                await Repository.Container.GetBlobClient(blobItem.Name).DownloadToAsync(fs);
            }
        }

        public async Task UploadAsync(string path, string directory)
        {
            string filename = path.Substring(path.LastIndexOf(Path.DirectorySeparatorChar) + 1);
            directory = CheckExtension(filename);
            filename = string.IsNullOrEmpty(directory?.Trim()) ? filename : $"{directory} {Path.DirectorySeparatorChar}{filename}";
            using (var fs = File.OpenWrite(path))
            {
                await Repository.Container.GetBlobClient(filename).UploadAsync(fs, true);
            }
            Refresh();
        }

        public string CheckExtension(string filename)
        {
            return Path.GetExtension(filename).Substring(Path.GetExtension(filename).LastIndexOf(".") + 1).ToUpper();
        }
    }
}
