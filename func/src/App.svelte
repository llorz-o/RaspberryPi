<script>
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
            port: "6800"
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
            url: "https://nextcloud.llorz.online",
            name: "Nextcloud",
            port: "8888"
        },
        {
            url: "https://portainer.llorz.online",
            name: "Portainer",
            port: "9000"
        },
    ]
    const index = window.localStorage.getItem("INDEX")
    const initItem = functions[index]
    let iframeUrl = initItem ? initItem.url : ''

    function changeSite(index) {
        iframeUrl = functions[index].url
        window.localStorage.setItem("INDEX", index)
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
        <iframe src="{iframeUrl}" frameborder="0"></iframe>
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
