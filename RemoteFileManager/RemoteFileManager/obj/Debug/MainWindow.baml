   M S B A M L   `   `   `  ����L  HRemoteFileManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:RemoteFileManagerRemoteFileManager  5   	   "    RemoteFileManager.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:RemoteFileManager     5   	     � Title$  Remote file storage��5   	    � WindowStartupLocation$ CenterScreen=�5	   	   $	��450��5
   	   $	��800��6   .��5      �    GradientBackground#��[  6   .+�5   
   �� $��Choose directory:��6   $
��Left=�6,   $��	40,45,0,0q�6G   $	��Top=�6Z   �� 5   
   -   5         ��Name$ CbDirectories��5       �� 
IsEditable . $
��Left=�5      $��
144,49,0,0q�6(   $	��Top=�6<   $	��228��6T   �� 5   
   -   5         ��Name$ LbItems��5       �� DisplayMemberPath$
 Name��5      $
��Left=�5      $	��237��6(   $��	40,89,0,0q�65   $	��Top=�6H   $	��332��6`   �� 5   
   -   5         ��Name$ 	BtnUpload��5      $��Upload��5      $
��Left=�5      $��
40,348,0,0q�6(   $	��Top=�6<   $	��103��6T   $��32��6`   �� 5   
   -   5        $ BtnDownload��5      $��Download��5       $
��Left=�5"      $��155,348,0,0q�6(   $	��Top=�6=   $	��103��6U   $��32��6a   �� 5#   
   -   5        $ 	BtnDelete��5$      $��Delete��5%      $
��Left=�5'      $��269,348,0,0q�6(   $	��Top=�6=   $	��103��6U   $��32��6a   �� 5(   
   $��Content type:��6   $
��Left=�6(   $��
415,93,0,0q�6C   $	��Top=�6W   �� 5)   
   $
��Left=�6   $��26��6-   $��
522,93,0,0q�69    �� 
IsReadOnly . $	��Top=�6�   $	��239��6�   ��6M   �� *Properties.ContentType+ �� Mode$ OneWay=�6�   �� 5*   
   $��Content length:��6   $
��Left=�6*   $��415,147,0,0q�6E   $	��Top=�6Z   �� 5+   
   $
��Left=�6   $��26��6-   $��522,147,0,0q�69    . $	��Top=�6�   $	��239��6�   ��6N   �� *Properties.ContentLength+$ OneWay=�6�   �� 5,   
   $��Date created:��6   $
��Left=�6(   $��415,199,0,0q�6C   $	��Top=�6X   �� 5-   
   $
��Left=�6   $��26��6-   $��522,199,0,0q�69    . $	��Top=�6�   $	��239��6�   ��6N   �� *Properties.CreatedOn+$ OneWay=�6�   �� 5.   
   $��Last modified:��6   $
��Left=�6)   $��415,251,0,0q�6D   $	��Top=�6Y   �� 5/   
   $
��Left=�6   $��26��6-   $��522,251,0,0q�69    . $	��Top=�6�   $	��239��6�   ��6N   �� *Properties.LastModified+$ OneWay=�6�   �� 50   
   $��Server encrypted:��6   $
��Left=�6,   $��415,300,0,0q�6G   $	��Top=�6\   �� 51   
   $
��Left=�6   $��26��6-   $��522,300,0,0q�69    . $	��Top=�6�   $	��239��6�   ��6N   �� *Properties.ServerEncrypted+$ OneWay=�6�   53      54      