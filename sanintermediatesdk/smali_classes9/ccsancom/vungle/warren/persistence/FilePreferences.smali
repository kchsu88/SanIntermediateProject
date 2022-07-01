.class public Lccsancom/vungle/warren/persistence/FilePreferences;
.super Ljava/lang/Object;
.source "FilePreferences.java"


# static fields
.field static final FILENAME:Ljava/lang/String; = "vungle_settings"

.field static final OLD_SHARED_PREFS:Ljava/lang/String; = "com.vungle.sdk"


# instance fields
.field private final file:Ljava/io/File;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final preferences:Lccsanandroid/content/SharedPreferences;

.field private final sharedPrefValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "ioExecutor"    # Ljava/util/concurrent/Executor;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    .line 36
    iput-object p2, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 37
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "vungle_settings"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->file:Ljava/io/File;

    .line 39
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    .line 40
    .local v3, "old":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    const-string v4, "FilePreferences"

    const-string v5, "Can\'t move old FilePreferences"

    invoke-static {v4, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "saved":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 45
    move-object v4, v2

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_1
    const/4 v0, 0x0

    const-string v4, "com.vungle.sdk"

    invoke-virtual {p1, v4, v0}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    .line 49
    invoke-direct {p0}, Lccsancom/vungle/warren/persistence/FilePreferences;->migrateFromSharedPrefs()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/persistence/FilePreferences;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->file:Ljava/io/File;

    return-object v0
.end method

.method private migrateFromSharedPrefs()V
    .locals 5

    .line 68
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 70
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lccsancom/vungle/warren/persistence/FilePreferences;

    goto :goto_1

    .line 72
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    goto :goto_1

    .line 74
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lccsancom/vungle/warren/persistence/FilePreferences;

    goto :goto_1

    .line 76
    :cond_2
    instance-of v3, v2, Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {p0, v3, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/util/HashSet;)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 79
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->clear()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 82
    return-void
.end method


# virtual methods
.method public varargs addSharedPrefsKey([Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-object p0
.end method

.method public apply()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 54
    .local v0, "serializable":Ljava/io/Serializable;
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lccsancom/vungle/warren/persistence/FilePreferences$1;

    invoke-direct {v2, p0, v0}, Lccsancom/vungle/warren/persistence/FilePreferences$1;-><init>(Lccsancom/vungle/warren/persistence/FilePreferences;Ljava/io/Serializable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 93
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 119
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    .local p2, "defaultValue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v1}, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/String;I)Lccsancom/vungle/warren/persistence/FilePreferences;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 111
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/util/HashSet;)Lccsancom/vungle/warren/persistence/FilePreferences;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/vungle/warren/persistence/FilePreferences;"
        }
    .end annotation

    .line 124
    .local p2, "value":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Lccsancom/vungle/warren/utility/CollectionsConcurrencyUtil;->getNewHashSet(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lccsanandroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    :cond_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lccsancom/vungle/warren/persistence/FilePreferences;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 85
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->values:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->sharedPrefValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences;->preferences:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsanandroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :cond_0
    return-object p0
.end method
