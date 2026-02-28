# WARNING: THIS SCRIPT IS UNCONFIRMED TO WORK YET. SCRIPT IS IN TESTING PHASE, USE AT OWN RISK
kubuntu had no problem relaunching after, so probably safe

# nvidia-wayland-plasma6-patch
fix the plasma 6 crash on wake from screen off (not just from sleep)

patch script below notes for safety

<h2>current state</h2>
work in progress:

<details>
  <summary><h3>2026.02.27-18:37CST</h3></summary>
<p align="center">  
  
- script ran fine, no errors, have not allowed screen to go black yet
  
- will update if need be

</p>
</details>  


<h1>patch script</h1>

```
curl -fsSL https://raw.githubusercontent.com/sudoxreboot/nvidia-wayland-plasma6-patch/main/plasvidia-patch.sh | bash
```
