# 🎒 Backpacks!

**Backpacks!** is a datapack that adds vanilla-friendly backpacks to your game! You can upgrade them and dye them!

## 🎥 Video
(We are currently working on the video!)

## 🔗 Links
[![youtube](https://img.shields.io/badge/youtube-ff0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@EclipseStudiosMC)
[![discord](https://img.shields.io/badge/discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/4pYjW9btNc)
[![modrinth](https://img.shields.io/badge/modrinth-5AD770?style=for-the-badge&logo=modrinth&logoColor=white)](https://modrinth.com/organization/eclipse-studios)
[![github](https://img.shields.io/badge/github-000000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/EclipseStudiosMC)
[![Patreon](https://img.shields.io/badge/Patreon-f96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/EclipseStudios447)
[![CurseForge](https://img.shields.io/badge/Curseforge-0D0D0D?style=for-the-badge&logo=curseforge&logoColor=white)](https://www.curseforge.com/members/elgeroingles/projects)

## 📝 Useful Info

<details>
  <summary>
    ✨ Features
  </summary>
  <p>
    
- 4 Tiers of Backpacks
- Ender Backpacks
- Backpack customization
- Command to create a custom backpack

  </p>
</details>

<details>
  <summary>
    ❓ FAQ
  </summary>
  <p>
    
#### Q: Sometimes the items in the backpack flick!

A: Item flickering is caused by a library that we are using, [Sentinel](https://github.com/DefinitelyHighmore/sentinel), which is currently essential for this datapack to work as it allows as to detect when we close a container, how hard items flickers depends on the person, for me it wasn't very much, but for some beta testers was a lot but it is a visual glitch and it doesn't affect gameplay. 

#### Q: Why the items don't have their texture? And why do I have a chest minecart in the head when I'm holding a Backpack?

A: Remember to also download the resourcepack to make it appear that it is not broken, go to "[Versions](https://modrinth.com/datapack/vanilla-backpacks/versions)" > Click on the version you are using > Download the resourcepack.

#### Q: Does this datapack work on older/newer versions?

A: This datapack doesn't work on older versions than 1.20.5, this is because all of the new commands aviable in those versions as well as the new item components format that was implemented in that update. Sadly this datapack won't be backported to older versions.

#### Q: Can I modify the datapack and redistribute it?

A: Yes you can, but only if you say who the original creator is ([Eclipse Studios](https://discord.gg/X2NTE7hkq8)) and if you link the [original Modrinth page](https://modrinth.com/datapack/vanilla-backpacks) somewhere noticeable in the project.

#### Q: Are you guys going to make more datapacks?

A: Yes we will, this was ment to be a side project of a more bigger and complex one that the team is doing. For more updates on our future datapacks join [our discord server](https://discord.gg/X2NTE7hkq8)!.

#### Q: Is this datapack compatible with other datapacks?

A: Yes it is. This datapack follows the [Smithed](https://wiki.smithed.dev/conventions/) conventions to ensure datapack compatibility.

  </p>
</details>

<details>
  <summary>
    📗 Recipes
  </summary>
  <p>
    
You can craft the Small Backpack (3 total slots) and the Ender Backpack (which is linked to your Ender Chest) in the crafting table like this:

![https://i.imgur.com/mNtkJNV.png](https://i.imgur.com/mNtkJNV.png)

You can upgrade the Small Backpacks 3 times (9, 18 and 40 slots respectively):

![https://i.imgur.com/fOSBRyk.png](https://i.imgur.com/fOSBRyk.png)

Additionally, you can dye any Backpack with any vanilla dye! (Ender Backpacks can't be dyed):

![https://i.imgur.com/IjTlYX3.png](https://i.imgur.com/IjTlYX3.png)

You can have different styles applied to your backpack:

![https://i.imgur.com/heqzBSc.png](https://i.imgur.com/heqzBSc.png)

(New styles will be aviable in the future!)

  </p>
</details>

<details>
  <summary>
    🌐 Languages
  </summary>
  <p>
    
This are all the languages supported right now:

- English (en_us): By [ElGeroIngles](https://modrinth.com/user/ElGeroIngles).
- Spanish (es_es): By [ElGeroIngles](https://modrinth.com/user/ElGeroIngles).

You can contribute to this project by translating it to other languages! Just make a fork of the [GitHub repository](https://github.com/Eclipse-Studios/backpacks), add your language and open a pull request!

  </p>
</details>

<details>
  <summary>
    🖥️ Commands
  </summary>
  <p>

You can give yourself a Backpack with the following command:

```mcfunction
/function backpacks:give/backpack/tiers/(tier)
```

You can also give yourself an Ender Backpack like this:

```mcfunction
/function backpacks:give/backpack/enderchest
```

You can also create a custom backpack with a simple command! Here's how:

```mcfunction
/function backpacks:give/backpack/custom {item_id:"",model_data:0,slots:0}
```

- item_id: The item id (example: `"minecraft:stone"`)
- model_data: A custom model data (example: `1234`)
- slots: The number of total slots (example: `41` or if you want the backpack to be linked to your enderchest: `"enderchest"`)

This is an example command:
```mcfunction
/function backpacks:give/backpack/custom {item_id:"minecraft:stick",model_data:0,slots:100}
```

That would give you a stick with 100 total slots and a custom model data of 0.

Here's the full list of custom model datas and their item ids if you want to use one of the backpacks model:

![https://i.imgur.com/yiJLWxf.png](https://i.imgur.com/yiJLWxf.png)

  </p>
</details>

<details>
  <summary>
    ❤️ Credits
  </summary>
  <p>
    
- [Highmore](https://github.com/DefinitelyHighmore)'s library [Sentinel](https://github.com/DefinitelyHighmore/sentinel) for detecting closing containers (may cause visual flickering of items inside backpacks).
- [Mitsaori](https://www.instagram.com/mitsaori/)'s backpacks models.

  </p>
</details>

<details>
  <summary>
    🙋 Authors
  </summary>
  <p>
    
- Team: [Eclipse Studios](https://discord.gg/X2NTE7hkq8)
    - Main dev: [@ElGeroIngles](https://modrinth.com/user/ElGeroIngles)
    - Artist: [@Mitsaori](https://www.instagram.com/mitsaori/)
 
  </p>
</details>

<details>
  <summary>
    🗑️ Unistall
  </summary>
  <p>
    
To unistall the datapack run `/function backpacks:cmd/uninstall` before removing it from the datapacks folder, that will remove all scoreboards and more stuff that the datapack uses.

| Note: The unistall function doesn't unistall the [Sentinel](https://github.com/DefinitelyHighmore/sentinel) library because other datapacks may be using it too. |
| --- |

  </p>
</details>

<details>
  <summary>
    🐛 Bug Report & 💡 Suggestions
  </summary>
  <p>
    
If you have found any bugs or have any suggestion, please reach out to us at [our discord server](https://discord.gg/X2NTE7hkq8).

  </p>
</details>

<details>
  <summary>
    🧑‍⚖️ License
  </summary>
  <p>
    
[Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/)

  </p>
</details>
