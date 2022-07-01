.class public final Lccsansan/da/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/da/addDownloadListener$getDownloadingList;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:[B = null

.field public static final addDownloadListener:I = 0x0

.field private static deleteDownItem:Ljava/lang/reflect/Method; = null

.field private static deleteDownList:Ljava/lang/reflect/Method; = null

.field private static getDownloadStatusByUrl:Ljava/lang/reflect/Method; = null

.field private static getDownloadedCount:Ljava/lang/reflect/Method; = null

.field private static getDownloadedList:Ljava/lang/reflect/Method; = null

.field private static getDownloadedRecordByUrl:Ljava/lang/reflect/Method; = null

.field private static volatile getDownloadingList:Lccsanandroid/os/Looper; = null

.field private static getDownloadingRecordByUrl:Ljava/lang/reflect/Method; = null

.field private static pause:Ljava/lang/reflect/Method; = null

.field private static removeDownloadListener:Ljava/lang/String; = ""

.field private static resume:Ljava/lang/reflect/Method; = null

.field private static unifiedDownload:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "getDescription"

    invoke-static {}, Lccsansan/da/addDownloadListener;->removeDownloadListener()V

    .line 1
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    const-string v1, "android.os.storage.StorageManager"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.os.storage.StorageVolume"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "getVolumeList"

    .line 4
    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/da/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v3, "getVolumeState"

    .line 5
    const/4 v5, 0x1

    :try_start_2
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsansan/da/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 7
    :try_start_3
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsansan/da/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    :goto_0
    :try_start_4
    new-array v1, v5, [Ljava/lang/Class;

    int-to-byte v3, v4

    int-to-byte v5, v3

    int-to-byte v6, v5

    invoke-static {v3, v5, v6}, Lccsansan/da/addDownloadListener;->removeDownloadListener(SSB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->deleteDownItem:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v0, "getPath"

    .line 16
    :try_start_5
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->getDownloadedList:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v0, "getUuid"

    .line 18
    :try_start_6
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->resume:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v0, "isPrimary"

    .line 19
    :try_start_7
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->pause:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_8
    const-string v0, "android.os.Environment"

    .line 23
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v1, "getRealExternalStorageDirectory"

    .line 24
    :try_start_9
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsansan/da/addDownloadListener;->deleteDownList:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const-string v1, "getRealExternalStorageState"

    .line 25
    :try_start_a
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->getDownloadedCount:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :cond_0
    :goto_3
    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/da/addDownloadListener$getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/da/addDownloadListener$getDownloadingList;

    .line 4
    iget-object v2, v1, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/da/addDownloadListener$getDownloadingList;
    .locals 4

    .line 1
    invoke-static {p0}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lccsansan/bw/AdError;

    invoke-direct {v1, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string p0, "SETTING_STORAGE"

    invoke-virtual {v1, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/da/addDownloadListener$getDownloadingList;

    .line 6
    iget-object v3, v2, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p0, 0x0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/da/addDownloadListener$getDownloadingList;

    return-object p0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 6
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x15

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/da/addDownloadListener$getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 15
    move-object/from16 v1, p0

    const-string v2, "StorageVolumeHelper"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    const/4 v4, 0x0

    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x1e

    const-string v6, ", State: "

    const-string v7, ", Path: "

    const-string v8, "removed"

    if-ne v0, v5, :cond_1

    :try_start_1
    const-string v0, "storage"

    .line 18
    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/storage/StorageManager;

    .line 19
    invoke-virtual {v0}, Lccsanandroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lccsanandroid/os/storage/StorageVolume;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 24
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "getDirectory"

    :try_start_3
    new-array v12, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    :try_start_4
    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {v10}, Lccsanandroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v12

    .line 31
    invoke-virtual {v10}, Lccsanandroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual {v10}, Lccsanandroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v15

    .line 33
    invoke-virtual {v10, v1}, Lccsanandroid/os/storage/StorageVolume;->getDescription(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 34
    new-instance v14, Lccsansan/da/addDownloadListener$getDownloadingList;

    move-object v11, v14

    move-object v9, v14

    move-object v14, v10

    move-object/from16 v17, v15

    move-object v15, v0

    move-object/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Lccsansan/da/addDownloadListener$getDownloadingList;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    .line 36
    iget-object v11, v9, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v11}, Lccsansan/da/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 37
    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v9, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    .line 38
    iget-object v11, v9, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v11}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 39
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v9, v17

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 41
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "R Description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.os.storage.StorageManager"

    .line 46
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    sget-object v5, Lccsansan/da/addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_7

    .line 52
    invoke-static {v5, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    .line 55
    sget-object v12, Lccsansan/da/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    .line 56
    new-array v14, v4, [Ljava/lang/Object;

    invoke-virtual {v12, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_3

    .line 57
    :cond_2
    sget-object v12, Lccsansan/da/addDownloadListener;->deleteDownItem:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_3

    .line 58
    new-array v14, v13, [Ljava/lang/Object;

    aput-object v1, v14, v4

    invoke-virtual {v12, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 56
    :goto_3
    goto :goto_4

    .line 57
    :cond_3
    const-string v12, ""

    .line 60
    :goto_4
    :try_start_5
    sget-object v14, Lccsansan/da/addDownloadListener;->pause:Ljava/lang/reflect/Method;

    if-eqz v14, :cond_4

    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v18, 0x1

    goto :goto_5

    :cond_4
    const/16 v18, 0x0

    .line 62
    :goto_5
    sget-object v14, Lccsansan/da/addDownloadListener;->resume:Ljava/lang/reflect/Method;

    if-nez v14, :cond_5

    const/16 v19, 0x0

    goto :goto_6

    :cond_5
    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v19, v14

    .line 63
    :goto_6
    sget-object v14, Lccsansan/da/addDownloadListener;->getDownloadedList:Ljava/lang/reflect/Method;

    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 64
    sget-object v14, Lccsansan/da/addDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v4

    invoke-virtual {v14, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 66
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 67
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Description: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6
    new-instance v14, Lccsansan/da/addDownloadListener$getDownloadingList;

    move-object/from16 v17, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v11

    move-object/from16 v22, v13

    invoke-direct/range {v17 .. v22}, Lccsansan/da/addDownloadListener$getDownloadingList;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v1, v11}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v14, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    .line 71
    iget-object v12, v14, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v12}, Lccsansan/da/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 72
    invoke-static {v1, v11}, Lccsansan/da/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v14, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    .line 73
    iget-object v11, v14, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v11}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 74
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 77
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v0, :cond_8

    return-object v3

    .line 80
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_8
    new-instance v0, Lccsansan/da/addDownloadListener$getDownloadingList;

    sget-object v5, Lccsansan/da/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lccsansan/da/addDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    .line 84
    iget-object v5, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v5}, Lccsansan/da/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 85
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/da/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    .line 86
    iput-boolean v5, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->addDownloadListener:Z

    .line 87
    iget-object v5, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v5}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 88
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_6
    const-string v0, "android.os.Environment"

    .line 90
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 92
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    sget-object v5, Lccsansan/da/addDownloadListener;->deleteDownList:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 94
    sget-object v6, Lccsansan/da/addDownloadListener;->getDownloadedCount:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    new-instance v4, Lccsansan/da/addDownloadListener$getDownloadingList;

    sget-object v6, Lccsansan/da/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v0}, Lccsansan/da/addDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    .line 97
    iget-object v0, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 98
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->getDownloadedList:Z

    .line 99
    iput-boolean v0, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->addDownloadListener:Z

    .line 100
    iget-object v0, v4, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v0}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    .line 103
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v3
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StorageVolumeHelper"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private static removeDownloadListener(SSB)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x61

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x17

    sget-object v0, Lccsansan/da/addDownloadListener;->IncentiveDownloadUtils:[B

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p0, p1

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p2

    add-int/lit8 v3, v3, 0x1

    move v5, p2

    move p2, p0

    move p0, p1

    move p1, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    neg-int p1, p1

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x8

    add-int/lit8 p2, v0, 0x1

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p1

    move p1, p0

    move p0, v5

    goto :goto_0
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/da/addDownloadListener;->IncentiveDownloadUtils:[B

    const/16 v0, 0x44

    sput v0, Lccsansan/da/addDownloadListener;->addDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x44t
        -0x4t
        -0x8t
        -0x7ct
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
    .end array-data
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-static {p0, p1}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsansan/da/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/da/addDownloadListener;->getDownloadingList:Lccsanandroid/os/Looper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "ThreadLooperProvider"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    sput-object v0, Lccsansan/da/addDownloadListener;->getDownloadingList:Lccsanandroid/os/Looper;

    .line 6
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 7
    new-array p0, v2, [Ljava/lang/Class;

    const-class v0, Lccsanandroid/os/Looper;

    aput-object v0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 8
    new-array p1, v2, [Ljava/lang/Object;

    sget-object v0, Lccsansan/da/addDownloadListener;->getDownloadingList:Lccsanandroid/os/Looper;

    aput-object v0, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    const/4 v4, 0x2

    if-ge v0, v1, :cond_2

    .line 10
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lccsanandroid/content/ContentResolver;

    aput-object v1, v0, v3

    const-class v1, Lccsanandroid/os/Looper;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 11
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v0, v3

    sget-object p0, Lccsansan/da/addDownloadListener;->getDownloadingList:Lccsanandroid/os/Looper;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    nop

    .line 13
    new-array v0, v4, [Ljava/lang/Class;

    int-to-byte v1, v3

    int-to-byte v5, v1

    int-to-byte v6, v5

    invoke-static {v1, v5, v6}, Lccsansan/da/addDownloadListener;->removeDownloadListener(SSB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lccsanandroid/os/Looper;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 14
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    sget-object p0, Lccsansan/da/addDownloadListener;->getDownloadingList:Lccsanandroid/os/Looper;

    aput-object p0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 104
    sget p0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-ge p0, v1, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
