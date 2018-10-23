# verilog-mode support for gtags
add the following code in packages.el
```
(spacemacs/counsel-gtags-define-keys-for-mode 'verilog-mode)
```
and add the following code in config.el
```
(spacemacs|define-jump-handlers verilog-mode)
```
