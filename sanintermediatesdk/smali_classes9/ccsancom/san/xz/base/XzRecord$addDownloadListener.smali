.class synthetic Lccsancom/san/xz/base/XzRecord$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/XzRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field static final synthetic removeDownloadListener:[I

.field static final synthetic unifiedDownload:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    .line 1
    invoke-static {}, Lccsansan/cs/unifiedDownload;->values()[Lccsansan/cs/unifiedDownload;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->unifiedDownload:[I

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v2, v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    and-int/lit8 v4, v2, 0x1f

    or-int/lit8 v2, v2, 0x1f

    xor-int v5, v4, v2

    and-int/2addr v2, v4

    shl-int/2addr v2, v1

    add-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1
    :catch_0
    move-exception v2

    .line 2
    :cond_0
    :goto_0
    invoke-static {}, Lccsancom/san/xz/base/XzRecord$Status;->values()[Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    :try_start_1
    sget-object v4, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v2, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    const/16 v4, 0x4d

    xor-int/lit8 v5, v2, 0x4d

    and-int/lit8 v6, v2, 0x4d

    or-int/2addr v5, v6

    shl-int/2addr v5, v1

    and-int/lit8 v6, v2, -0x4e

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    or-int/2addr v2, v6

    sub-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v3

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x5

    :try_start_2
    sget-object v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    sget v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    and-int/lit8 v5, v4, 0x5

    xor-int/2addr v4, v2

    or-int/2addr v4, v5

    xor-int v6, v5, v4

    and-int/2addr v4, v5

    shl-int/2addr v4, v1

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v6, v3

    if-eqz v6, :cond_2

    goto :goto_2

    :catch_2
    move-exception v4

    :cond_2
    :goto_2
    :try_start_3
    sget-object v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x3

    aput v6, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    sget v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v5, v4, 0x19

    xor-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v5

    xor-int v6, v5, v4

    and-int/2addr v4, v5

    shl-int/2addr v4, v1

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    rem-int/2addr v6, v3

    if-nez v6, :cond_3

    const/16 v4, 0x48

    goto :goto_3

    :cond_3
    const/16 v4, 0x3c

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    :try_start_4
    sget-object v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x4

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    sget v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    xor-int/lit8 v5, v4, 0x47

    and-int/lit8 v4, v4, 0x47

    shl-int/2addr v4, v1

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    rem-int/2addr v5, v3

    if-nez v5, :cond_4

    const/16 v4, 0x5d

    goto :goto_4

    :cond_4
    const/16 v4, 0x21

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_5

    goto :goto_5

    :catch_5
    move-exception v2

    :cond_5
    :goto_5
    :try_start_6
    sget-object v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v4, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v2, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_6

    const/16 v2, 0x36

    goto :goto_6

    :cond_6
    const/16 v2, 0x42

    goto :goto_6

    :catch_6
    move-exception v2

    :goto_6
    :try_start_7
    sget-object v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v4, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    xor-int/lit8 v4, v2, 0x44

    and-int/lit8 v2, v2, 0x44

    shl-int/2addr v2, v1

    add-int/2addr v4, v2

    and-int/lit8 v2, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_7

    goto :goto_7

    :catch_7
    move-exception v2

    :cond_7
    :goto_7
    :try_start_8
    sget-object v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    sget-object v4, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v2, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    sget v2, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x4c

    sub-int/2addr v2, v1

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x1

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    sget v0, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x35

    and-int/lit8 v0, v0, 0x35

    or-int/2addr v0, v2

    shl-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v3

    return-void
.end method
