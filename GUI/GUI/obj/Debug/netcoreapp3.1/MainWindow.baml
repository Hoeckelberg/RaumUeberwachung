   M S B A M L   `   `   `  ����>  :GUI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:GUIGUI  5   	       GUI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:GUI     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��450��5      $	��800��6'     � 
ResizeMode$  NoResize=�5   R    � Title$  ��6h    � 	Resources 5	         	MenueOpen �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  
MenueClose��%�  &	        &	 �     �� 5
   
   .��5      U� $ (FrameworkElement.Width)�6,   $ 	GridMenue��6a   .\�5        $ 0��6'   $ 70Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ 	GridMenue��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 70Q�69   5      5      5       � Triggers 5      :� 5   
    :� RoutedEvent$ ButtonBase.Click��6   	 :� 
SourceName$	 ButtonOpenMenue��66   .[�5      �� #��[  6   5      :� 5   
   $ ButtonBase.Click��6   $	 ButtonCloseMenue��66   .[�5      �� #��[ 6   5      .��5!      � .+�5"   
   � $��80��6   $	��Top=�6   
�����w�.+�5#      �� 
�������
 �� Padding$
 20q�6+   $��12 0 0 6q�68   $��POA 2020 - Moritz, Marvin��6J   $��Center=�6k   $��Center=�6�   $��30(�6�   $
��bold"�6�   6�   5%      �� 5&   
   $
��12 5q�6   $	��Top=�6#    �� Orientation$ 
Horizontal=�6;   $��Right=�6T   .+�5'      '  !MaterialDesignThemes.Wpf.PopupBox  
�������$��10q�69      PlacementMode$ BottomAndAlignRightEdges=�6E      	StaysOpen$ False��6n   $��Right=�6�      PopupContent. 5(      �� $	��150��6   .+�5)      �� -   5         ��Name$ 
ButtonInfo��5)      $
��Info��61   6@   �� 5*      �� 5+      -   5        $ ButtonPopUp��5+      $
��Exit��62   6A   5,      5-      5/      � 51   
   -   5         �Name$ 	GridMenue��51      $��20��6"   $
��Left=�6-   
�������52      � 53   
   -   5        $ Anzahl��53   6   $	��200��6   $
��Left=�6   .+�54      �� .+�55      � $	��150��6   
�������.+�56      �� -   5        $ ButtonCloseMenue��56      $��60��67   $��60��6B   $��
0,0,140,90q�6{   $��Bottom=�6�   $y�	Collapsed=�6�   ��6N   Z� ��6d   Z� .��57      '  !MaterialDesignThemes.Wpf.PackIcon  
���   �   Kind$ 	ArrowLeft=�6E   $��25��6V   58      �� 59      -   5        $ ButtonOpenMenue��59      $��60��66   $��60��6A   $��
0,0,140,90q�6z   $��Bottom=�6�   ��6M   Z� ��6c   Z� .��5:        
���   �$
 Menu=�6E   $��30��6Q   $��50��6]   5;      5<      �� 5=      
�������.@�5>      �� $��60��6#   .��5?      �� $ 
Horizontal=�6%   .+�5@        $��10q�66   $ ViewDashboard=�6B   $��25��6W   $��Center=�6b   
�������6}   �� 5A      $
��Home��6(   $��Center=�64   $��20 10q�6O   5B      5D      �� 5E      $��60��6#   .��5F      �� $ 
Horizontal=�6%   .+�5G        $��10q�66   $ AlignVerticalBottom=�6B   $��25��6]   $��Center=�6h   �� 5H      $��	Statistik��6(   $��Center=�69   $��20 10q�6T   5I      5J      �� 5K      $��60��6#   .��5L      �� $ 
Horizontal=�6%   .+�5M        $��10q�66   $ Github=�6B   $��25��6P   $��Center=�6[   �� 5N      -   5        $ 
GitLabLink��5O   A   $��0q�5N   %   
������ 
������  J� Opacity$ 1Q�5O   n    K� ZIndex$ 1��6z   $��85��6�   $��Gitlab��6�   $y�	Collapsed=�6�   5Q      5S      5T      5U      5V      � 5W   
   .+�5X      �� 
������ $��Arial)�61   $
��Thin"�6D   $ 1��6V   $��Anzahl Personen im Raum:��5Y      $��22(�68    �� TextAlignment$ Center=�6F   $��210,97,219,257q�6]   5[      �� 5\      -   5         ��Name$ L1��5\   8   $��Center=�6   $�� ��6E   
������ $��10 10 10 10q�6i   $��90(�6   $��Courier New)�6�   $
��Left=�6�   $��210,177,0,0q�6�   $	��Top=�6�   $	��371��6�   $	��129��6�   5^      5_      5`      