   M S B A M L   `   `   `  ����G  CPixelLab.Wpf, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nullA0clr-namespace:PixelLab.Wpf;assembly=PixelLab.WpfPixelLab.Wpf  5   	    CookBook   CookBook.AddWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Alibs0clr-namespace:PixelLab.Wpf;assembly=PixelLab.Wpf     5   	     � Title$)  #Добавление рецепта��5   	   $	��504��6$   $	��507��61   
������� � WindowStartupLocation$ CenterScreen=�6W   .��5      (� .��5   
   � -   5        $
��grid��5      $	��478��6   $
��Auto��6(   .+�5      �� -   5        $��label1��5   e   $��Ингридиенты��6   $��32��6*   $
��Left=�66   $��
172,55,0,0q�6Q   $	��Top=�6s   $	��106��6�   $��	Condensed&�6�   $��Italic$�6�   $
��Bold"�6�   �� 5	      -   5        $��label5��5	   v   $3��-Дополнительное описание��6   $��33��66   $��Center=�6B   $��171,217,140,0q�6_   $	��Top=�6�   $	��188��6�   $��	Condensed&�6�   $��Italic$�6�   $
��Bold"�6�   �� 5
      -   5        $��addRecipeButton��5
   X   $#��Добавить рецепт��6   $��35��6/   $��Center=�6;   $��Bottom=�6o   $	��140��6�   $��177,0,182,9q�6�   ��5      �� 5       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5      �  � Color$ 	#FF4A47A9��6'    � Offset$ 0Q�69   � 5      $ 	#FFD7A0A0��6'   $ 1Q�69   5      ��5      �� 5      $ 0.5,1&�6*   $ 0.5,0&�6;   .��5      � $ 	#FFD0C7AD��6'   $ 0Q�69   � 5      $ White��6'   $ 1Q�65   5      5      �� 5      -   5        $��label6��5   b   $��Тип блюда��6   $��32��6(   $
��Left=�64   $��	35,31,0,0q�6O   $	��Top=�6p   $��78��6�   $��	Condensed&�6�   $��Italic$�6�   $
��Bold"�6�      PixelLab.Wpf.InfoTextBox  5      -   5        $��
recipeName��5   Z      TextBoxInfo$0 *Введите название блюда��6   $��36,0,151,447q�6D   6l   �� 5      -   5        $��
recipeType��5   d   $��23��6   $
��Left=�6#    �� 
IsEditable . $��
173,32,0,0q�6P   $	��Top=�6v   $	��175��6�   6�   �� 5      -   5        $��addRowButton��5   Q   $��23��6   $
��Left=�6!   $��391,210,0,0q�6<   $	��Top=�6e   $��75��6}   $��Добавить��6�   6�   &   System.Windows.Controls.DataGrid  5      -	   5          Name$ 	dataGrid1��5   -   $��26,79,33,268q�6   $	��440��6@   	   AutoGenerateColumns	 .  
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 6)      Header$ Наименование��64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6J   ��  �� Path$
 Ingr�  5      $ 1* 6)   $ Количество��64    6I   �� $	 Col�4  .System.Windows.Controls.DataGridComboBoxColumn  5       -
   5        dgCombo2��$ 2* 5    ?   $' !Единица измерения��6J      SelectedItemBinding 6f   �� $ Ed�5"        5$      -   5        $��
recipeText��5$   Z   $0 *Введите описание блюда��6   $��25,239,30,54q�6D    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5%      " �� VerticalScrollBarVisibility$ Visible=�63   $	��444��6Y   5&      5'      5(      