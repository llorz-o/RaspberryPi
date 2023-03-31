<script>
    const host = location.host
    const isLocal = host.indexOf('192.168') >= 0
    const functions = [
        {
            url: "https://1024.llorz.online",
            name: "仪表盘",
            port: "1024"
        },
        {
            url: "https://jellyfin.llorz.online",
            name: "Jelly-fin",
            port: "8096"
        },
        {
            url: "https://aria2ng.llorz.online",
            name: "Aria2",
            port: "6801"
        },
        {
            url: "https://transmission.llorz.online",
            name: "Transmission",
            port: "9091"
        },
        {
            url: "https://sync.llorz.online",
            name: "Sync",
            port: "58888"
        },
        {
            url: "https://files.llorz.online",
            name: "File Browser",
            port: "8090"
        },
        {
            url: "https://portainer.llorz.online",
            name: "Portainer",
            port: "9000"
        },
        {
            url: "https://nextcloud.llorz.online",
            name: "Nextcloud (_blank)",
            port: "8888"
        },
        {
            url: "https://38.54.86.157:7800/446defb6",
            name: "宝塔面板(_blank)",
            port: null,
            _blank: true
        }
    ]
    let index = window.localStorage.getItem("INDEX") || 0
    let indexItem = functions[index]
    let iframeUrl = indexItem && !isLocal ? indexItem.url : `http://${host}:${indexItem.port}`

    function changeSite(_index) {
        index = _index
        indexItem = functions[index]
        if (indexItem._blank) {
            window.open(indexItem.url,"_blank")
            return
        }
        else if (isLocal) {
            iframeUrl = `http://${host}:${indexItem.port}`
        }
        else {
            iframeUrl = functions[_index].url
        }
        window.localStorage.setItem("INDEX", _index)
    }
</script>

<main>
    <div class="sidebar">
        {#each functions as func,index}
            <button class="item" key="{func.url}" on:click="{() => changeSite(index)}">
                {func.name}
            </button>
        {/each}
    </div>
    <div class="content">
        <iframe src="{iframeUrl}" frameborder="0" title="content"></iframe>
    </div>
</main>

<style>
    main {
        display: flex;
        flex-direction: column;
        height: 100%;
        padding: 1px;
    }

    .sidebar {
        padding-bottom: 10px;
    }

    .sidebar .item {
        display: inline-block;
        margin: 0 10px;
        padding: 5px;
        border-radius: 5px;
        border: 1px solid gray;
        font-size: 14px;
    }

    .content {
        flex: 1;
    }

    .content iframe {
        height: 100%;
        width: 100%;
    }
</style>
