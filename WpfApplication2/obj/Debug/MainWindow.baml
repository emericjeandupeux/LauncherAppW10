   M S B A M L   `   `   `  ����M  IMainWindowLauncher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication2WpfApplication2  5   	        WpfApplication2.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication2     5   	     � Icon$  Ressources/favicon.ico��5   	    � Title$ Design��5	   	   $	��350��6   $	��700��6%   $	��0.5q�61    � 
ResizeMode$ NoResize=�6G    � WindowStyle$
 None=�6]   
���P�� � ShowInTaskbar .  .��5
      � -   5        $��0,0,0,0q�5
   '   $
��Left=�68   $	��700��6S   .+�5   
   �� -   5         ��Name$ TextLbl��5      $��Application��6!   $
��Left=�67   $	��Top=�6R    J� RenderTransformOrigin$ 
1.737,-0.5&�6j   $	��700��6�   
�������$��40��6�   $��26.667(�6�   $��Magneto)�6�   $��8,5,5,5q�6�   {�.  $��
-5,-64,0,0q�6  z�5      V� 5      .~�5      ��  �� Angle$ -3Q�6&   5      5      �� 5   
   ���	#FFF4F4F5$
��Left=�6%   $��15��6@   
���   �$	��Top=�6[   $	��700��6s    J� Opacity$	 0.5Q�6   $��0��6�   $��0,45,0,0q�6�   �� 5   
   -   5        	 ��Name$	 BtnClose��5      $
��Left=�6#   $��	669,0,0,0q�6>   $	��Top=�6Q   $��30��6i   $��30��6t   
���P��
�������$��2q�6�   �� 5   
   -   5        $	 BtnMinimise��5      $
��Left=�6&   $��	635,0,0,0q�6A   $	��Top=�6T   $��30��6l   $��30��6w   $��2,10,2,2q�6�   
�������
���P��6�   �� 5   
   $
��Left=�6   $	��100��6/   $��	33,81,0,0q�6<   
���   �$	��Top=�6^   $��87��6v   $��0��6�   
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.6Q�6#      
BlurRadius$ 10Q�61      ShadowDepth$ 10Q�6A   ��5      �� 5       �� ImageSource$ Ressources/smiley.jpg��6    j� Stretch$ Uniform=�6A   5      �� 5   
   -   5        $	 BtnClickTCPServer��5      $��Button��6,   $
��Left=�6=   $��	33,81,0,0q�6X   $	��Top=�6k   $��87��6�   $ 0Q�6�   $	��100��6�   $��0q�6�    � Cursor$
 Hand��6�   �� 5   
   -   5        $ label��5      $��
TCP Server��6   $
��Left=�64   $	��Top=�6O   $��
36,153,0,0q�6g   $��87��6{   $��14.667(�6�   
�������$ 0.5,0.5&�6�   z�5      V� 5       .~�5!      �� �� 5"      �� 5#      $ -3Q�6&   T� 5$      5%      5'      5(   	   5)      