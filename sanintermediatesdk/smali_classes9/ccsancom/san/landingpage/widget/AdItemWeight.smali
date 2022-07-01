.class public abstract enum Lccsancom/san/landingpage/widget/AdItemWeight;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/landingpage/widget/AdItemWeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum APP:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum DIVIDER:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum EXPAND_TEXT:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum GALLERY:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum IMAGE:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum MAIN_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum SCREENSHOT:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum SCREEN_VIDEO:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum SEE_MORE:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum TEXT:Lccsancom/san/landingpage/widget/AdItemWeight;

.field public static final enum VIDEO:Lccsancom/san/landingpage/widget/AdItemWeight;

.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    new-instance v2, Lccsancom/san/landingpage/widget/AdItemWeight$1;

    const-string v3, "DIVIDER"

    const-string v4, "divider"

    invoke-direct {v2, v3, v0, v4}, Lccsancom/san/landingpage/widget/AdItemWeight$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/landingpage/widget/AdItemWeight;->DIVIDER:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 10
    new-instance v3, Lccsancom/san/landingpage/widget/AdItemWeight$2;

    const-string v4, "TEXT"

    const-string v5, "text"

    invoke-direct {v3, v4, v1, v5}, Lccsancom/san/landingpage/widget/AdItemWeight$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/landingpage/widget/AdItemWeight;->TEXT:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 37
    new-instance v4, Lccsancom/san/landingpage/widget/AdItemWeight$3;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    const-string v7, "image"

    invoke-direct {v4, v5, v6, v7}, Lccsancom/san/landingpage/widget/AdItemWeight$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsancom/san/landingpage/widget/AdItemWeight;->IMAGE:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 68
    new-instance v5, Lccsancom/san/landingpage/widget/AdItemWeight$4;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    const-string v9, "video"

    invoke-direct {v5, v7, v8, v9}, Lccsancom/san/landingpage/widget/AdItemWeight$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/landingpage/widget/AdItemWeight;->VIDEO:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 78
    new-instance v7, Lccsancom/san/landingpage/widget/AdItemWeight$5;

    const-string v9, "GALLERY"

    const/4 v10, 0x4

    const-string v11, "gallery"

    invoke-direct {v7, v9, v10, v11}, Lccsancom/san/landingpage/widget/AdItemWeight$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsancom/san/landingpage/widget/AdItemWeight;->GALLERY:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 98
    new-instance v9, Lccsancom/san/landingpage/widget/AdItemWeight$6;

    const-string v11, "APP"

    const/4 v12, 0x5

    const-string v13, "app"

    invoke-direct {v9, v11, v12, v13}, Lccsancom/san/landingpage/widget/AdItemWeight$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lccsancom/san/landingpage/widget/AdItemWeight;->APP:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 108
    new-instance v11, Lccsancom/san/landingpage/widget/AdItemWeight$7;

    const-string v13, "SCREENSHOT"

    const/4 v14, 0x6

    const-string v15, "screenshot"

    invoke-direct {v11, v13, v14, v15}, Lccsancom/san/landingpage/widget/AdItemWeight$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lccsancom/san/landingpage/widget/AdItemWeight;->SCREENSHOT:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 118
    new-instance v13, Lccsancom/san/landingpage/widget/AdItemWeight$8;

    const-string v15, "EXPAND_TEXT"

    const/4 v14, 0x7

    const-string v12, "expand_text"

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/landingpage/widget/AdItemWeight$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/landingpage/widget/AdItemWeight;->EXPAND_TEXT:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 128
    new-instance v12, Lccsancom/san/landingpage/widget/AdItemWeight$9;

    const-string v15, "MAIN_BUTTON"

    const/16 v14, 0x8

    const-string v10, "main_button"

    invoke-direct {v12, v15, v14, v10}, Lccsancom/san/landingpage/widget/AdItemWeight$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/landingpage/widget/AdItemWeight;->MAIN_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 138
    new-instance v10, Lccsancom/san/landingpage/widget/AdItemWeight$10;

    const-string v15, "RESERVE_BUTTON"

    const/16 v14, 0x9

    const-string v8, "reserve_button"

    invoke-direct {v10, v15, v14, v8}, Lccsancom/san/landingpage/widget/AdItemWeight$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lccsancom/san/landingpage/widget/AdItemWeight;->RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 148
    new-instance v8, Lccsancom/san/landingpage/widget/AdItemWeight$11;

    const-string v15, "SEE_MORE"

    const/16 v14, 0xa

    const-string v6, "see_more"

    invoke-direct {v8, v15, v14, v6}, Lccsancom/san/landingpage/widget/AdItemWeight$11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lccsancom/san/landingpage/widget/AdItemWeight;->SEE_MORE:Lccsancom/san/landingpage/widget/AdItemWeight;

    .line 169
    new-instance v6, Lccsancom/san/landingpage/widget/AdItemWeight$12;

    const-string v15, "SCREEN_VIDEO"

    const/16 v14, 0xb

    const-string v1, "screen_video"

    invoke-direct {v6, v15, v14, v1}, Lccsancom/san/landingpage/widget/AdItemWeight$12;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lccsancom/san/landingpage/widget/AdItemWeight;->SCREEN_VIDEO:Lccsancom/san/landingpage/widget/AdItemWeight;

    const/16 v1, 0xc

    .line 170
    new-array v1, v1, [Lccsancom/san/landingpage/widget/AdItemWeight;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v9, v1, v0

    const/4 v0, 0x6

    aput-object v11, v1, v0

    const/4 v0, 0x7

    aput-object v13, v1, v0

    const/16 v0, 0x8

    aput-object v12, v1, v0

    const/16 v0, 0x9

    aput-object v10, v1, v0

    const/16 v0, 0xa

    aput-object v8, v1, v0

    aput-object v6, v1, v14

    sput-object v1, Lccsancom/san/landingpage/widget/AdItemWeight;->$VALUES:[Lccsancom/san/landingpage/widget/AdItemWeight;

    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x36

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x36

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lccsancom/san/landingpage/widget/AdItemWeight;->type:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/san/landingpage/widget/AdItemWeight$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/landingpage/widget/AdItemWeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getHeightPixels(I)I
    .locals 6
    .param p0, "value"    # I

    .line 4
    .end local p0    # "value":I
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x6d

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x6d

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v4, -0x2

    const/4 v5, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-ne p0, v5, :cond_1

    .line 4
    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    const/16 v1, 0x51

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p0, v5, :cond_2

    const/16 v1, 0x8

    goto :goto_4

    :cond_2
    const/16 v1, 0x1d

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    xor-int/lit8 p0, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    or-int v1, p0, v0

    shl-int/2addr v1, v2

    xor-int/2addr p0, v0

    sub-int/2addr v1, p0

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    :cond_3
    add-int/lit8 p0, p0, 0x2e

    sub-int/2addr p0, v2

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return v4

    .line 0
    :goto_5
    if-ne p0, v4, :cond_4

    .line 4
    const/16 v1, 0x48

    goto :goto_6

    :cond_4
    const/16 v1, 0x4b

    :goto_6
    packed-switch v1, :pswitch_data_3

    .line 1
    nop

    .line 4
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-static {p0}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p0

    goto :goto_7

    :pswitch_2
    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 1
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x29

    and-int/lit8 v3, v0, 0x29

    or-int/2addr v1, v3

    shl-int/2addr v1, v2

    xor-int/2addr v3, v5

    or-int/lit8 v0, v0, 0x29

    and-int/2addr v0, v3

    neg-int v0, v0

    xor-int/2addr v0, v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :goto_7
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    or-int/lit8 v1, v0, 0x29

    shl-int/lit8 v4, v1, 0x1

    and-int/lit8 v0, v0, 0x29

    xor-int/2addr v0, v5

    and-int/2addr v0, v1

    neg-int v0, v0

    and-int v1, v4, v0

    or-int/2addr v0, v4

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :cond_6
    packed-switch v2, :pswitch_data_4

    goto :goto_8

    :pswitch_3
    return p0

    :goto_8
    const/16 v0, 0x2d

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_a

    :goto_9
    throw p0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x48
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public static getWidthPixels(I)I
    .locals 7
    .param p0, "value"    # I

    .line 3
    .end local p0    # "value":I
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x65

    and-int/lit8 v2, v0, 0x65

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    const/4 v4, -0x1

    xor-int/2addr v2, v4

    or-int/lit8 v5, v0, 0x65

    and-int/2addr v2, v5

    neg-int v2, v2

    and-int v5, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 0
    :cond_0
    if-ne p0, v4, :cond_1

    .line 3
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    :goto_0
    const/4 v5, -0x2

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    or-int/lit8 p0, v1, 0x59

    shl-int/2addr p0, v3

    xor-int/lit8 v0, v1, 0x59

    sub-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_9

    goto/16 :goto_b

    .line 0
    :pswitch_0
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_2

    .line 3
    const/16 v2, 0x5b

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 0
    const/16 v1, 0x3e

    if-ne p0, v5, :cond_5

    goto :goto_4

    .line 3
    :pswitch_1
    add-int/lit8 p0, v1, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    :cond_3
    or-int/lit8 p0, v1, 0x6f

    shl-int/2addr p0, v3

    xor-int/lit8 v0, v1, 0x6f

    sub-int/2addr p0, v0

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    const/16 p0, 0x22

    goto :goto_2

    :cond_4
    const/16 p0, 0x1c

    :goto_2
    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    return v4

    :goto_3
    const/16 p0, 0x58

    :try_start_0
    div-int/2addr p0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    const/16 v2, 0x32

    goto :goto_5

    :cond_5
    const/16 v2, 0x3e

    :goto_5
    packed-switch v2, :pswitch_data_3

    .line 1
    nop

    .line 3
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-static {p0}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p0

    goto :goto_8

    :pswitch_3
    and-int/lit8 p0, v0, 0x3e

    or-int/2addr v0, v1

    add-int/2addr p0, v0

    xor-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v4

    shl-int/2addr p0, v3

    add-int/2addr v0, p0

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 1
    :cond_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v0, 0x3

    or-int/2addr v1, v2

    shl-int/2addr v1, v3

    and-int/lit8 v2, v0, -0x4

    xor-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, v2

    neg-int v0, v0

    xor-int/2addr v0, v4

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    const/16 v0, 0x30

    goto :goto_6

    :cond_7
    const/16 v0, 0x1b

    :goto_6
    packed-switch v0, :pswitch_data_4

    goto :goto_7

    :pswitch_4
    return p0

    :goto_7
    const/16 v0, 0x2b

    :try_start_1
    div-int/2addr v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :goto_8
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x50

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x50

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/2addr v1, v4

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_5

    goto :goto_a

    :pswitch_5
    return p0

    :goto_a
    const/4 v0, 0x0

    :try_start_2
    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return p0

    :catchall_2
    move-exception p0

    throw p0

    :goto_b
    const/4 v3, 0x0

    :cond_9
    packed-switch v3, :pswitch_data_6

    const/16 v5, 0xe

    :pswitch_6
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1b
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x3

    or-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    const-class v0, Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/landingpage/widget/AdItemWeight;

    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x55

    and-int/lit8 v2, v0, 0x55

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x55

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    return-object p0
.end method

.method public static values()[Lccsancom/san/landingpage/widget/AdItemWeight;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x67

    and-int/lit8 v0, v0, 0x67

    shl-int/lit8 v0, v0, 0x1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/landingpage/widget/AdItemWeight;->$VALUES:[Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-virtual {v0}, [Lccsancom/san/landingpage/widget/AdItemWeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/landingpage/widget/AdItemWeight;

    sget v1, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    xor-int/lit8 v2, v1, 0x4b

    and-int/lit8 v1, v1, 0x4b

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-object v0
.end method


# virtual methods
.method public getImageHeightPixels(II)I
    .locals 7
    .param p1, "value"    # I
    .param p2, "width"    # I

    .line 2
    .end local p1    # "value":I
    .end local p2    # "width":I
    sget v0, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x7e

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2
    const/16 v3, 0x49

    goto :goto_0

    :cond_1
    const/16 v3, 0x19

    :goto_0
    const/4 v4, -0x2

    packed-switch v3, :pswitch_data_0

    xor-int/lit8 p1, v0, 0x41

    and-int/lit8 p2, v0, 0x41

    or-int/2addr p1, p2

    shl-int/2addr p1, v2

    xor-int/2addr p2, v1

    or-int/lit8 v3, v0, 0x41

    and-int/2addr p2, v3

    neg-int p2, p2

    or-int v3, p1, p2

    shl-int/2addr v3, v2

    xor-int/2addr p1, p2

    sub-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    goto/16 :goto_9

    .line 0
    :pswitch_0
    const/4 v3, 0x0

    if-eq p1, v4, :cond_2

    .line 2
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    xor-int/lit8 v4, v0, 0x2d

    and-int/lit8 v5, v0, 0x2d

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 0
    :cond_3
    const/16 v4, 0x5ee

    if-ne p1, v4, :cond_4

    .line 2
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    const/16 v5, 0xf

    packed-switch v4, :pswitch_data_2

    :cond_5
    goto :goto_6

    :pswitch_1
    and-int/lit8 v4, v0, 0x17

    xor-int/lit8 v6, v4, -0x1

    or-int/lit8 v0, v0, 0x17

    and-int/2addr v0, v6

    shl-int/2addr v4, v2

    neg-int v4, v4

    neg-int v4, v4

    xor-int v6, v0, v4

    and-int/2addr v0, v4

    shl-int/2addr v0, v2

    add-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6

    const/16 v4, 0xf

    goto :goto_3

    :cond_6
    const/16 v4, 0x34

    :goto_3
    packed-switch v4, :pswitch_data_3

    .line 0
    const/16 v4, 0x2d0

    if-ne p2, v4, :cond_9

    goto :goto_4

    .line 2
    :pswitch_2
    const/16 v4, 0x752f

    if-ne p2, v4, :cond_5

    :goto_4
    and-int/lit8 p1, v0, 0x46

    or-int/lit8 p2, v0, 0x46

    add-int/2addr p1, p2

    sub-int/2addr p1, v3

    sub-int/2addr p1, v2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    const/4 p1, 0x1

    :goto_5
    :pswitch_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    sget p2, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    add-int/lit8 p2, p2, 0x56

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p2, v1

    shl-int/2addr p2, v2

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    packed-switch v2, :pswitch_data_4

    return p1

    :pswitch_4
    const/16 p2, 0x3a

    :try_start_0
    div-int/2addr p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_9
    :goto_6
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    .line 2
    sget p2, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    and-int/lit8 v0, p2, -0x10

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    and-int/2addr p2, v5

    shl-int/2addr p2, v2

    or-int v1, v0, p2

    shl-int/2addr v1, v2

    xor-int/2addr p2, v0

    sub-int/2addr v1, p2

    rem-int/lit16 p2, v1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/AdItemWeight;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    const/16 p2, 0x1e

    goto :goto_7

    :cond_a
    const/16 p2, 0x29

    :goto_7
    packed-switch p2, :pswitch_data_5

    goto :goto_8

    :pswitch_5
    return p1

    :goto_8
    const/16 p2, 0x9

    :try_start_1
    div-int/2addr p2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    :cond_b
    :goto_9
    const/16 p1, 0x13

    xor-int/lit8 p2, v0, 0x13

    and-int/lit8 v3, v0, 0x13

    or-int/2addr p2, v3

    shl-int/2addr p2, v2

    and-int/lit8 v3, v0, -0x14

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    or-int/2addr p1, v3

    neg-int p1, p1

    or-int v0, p2, p1

    shl-int/2addr v0, v2

    xor-int/2addr p1, p2

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return v4

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x29
        :pswitch_5
    .end packed-switch
.end method

.method public abstract render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;
.end method
