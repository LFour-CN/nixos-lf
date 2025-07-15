{ ... }:
{
  home.file.".config/wofi/style.css".text = ''
    * {
        font-family: JetBrainsMono, SpaceMono;
        color: #e5e9f0;
        /* background: transparent; */
    }

    #window {
        background: rgba(41, 46, 66, 0.5);
        margin: auto;
        padding: 10px;
        border-radius: 1px;
        border: 1px solid #16a187;
        background-color: #151515;
        opacity: 1.0;
        width: 100px;
        height: 100px;
        max-width: 100%;
        max-height: 100%;
    }

    #input {
        padding: 10px;
        margin-bottom: 5px;
        border-radius: 5px;
    }

    #outer-box {
        padding: 10px;
    }

    #img {
        margin-right: 5px;
    }

    #entry {
        padding: 10px;
        border-radius: 10px;
    }

    #entry:selected {
        background-color: #16a187;
    }

    #text {
        margin: 2px;
    }  
  '';
}
