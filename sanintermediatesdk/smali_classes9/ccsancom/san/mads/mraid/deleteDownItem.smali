.class public enum Lccsancom/san/mads/mraid/deleteDownItem;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/mads/mraid/deleteDownItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum CLOSE:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum CREATE_CALENDAR_EVENT:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum EXPAND:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum OPEN:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum PLAY_VIDEO:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum RESIZE:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum STORE_PICTURE:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum UNSPECIFIED:Lccsancom/san/mads/mraid/deleteDownItem;

.field public static final enum USE_CUSTOM_CLOSE:Lccsancom/san/mads/mraid/deleteDownItem;


# instance fields
.field private final mJavascriptString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsancom/san/mads/mraid/deleteDownItem;->CLOSE:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 2
    new-instance v1, Lccsancom/san/mads/mraid/deleteDownItem$IncentiveDownloadUtils;

    const-string v3, "EXPAND"

    const/4 v4, 0x1

    const-string v5, "expand"

    invoke-direct {v1, v3, v4, v5}, Lccsancom/san/mads/mraid/deleteDownItem$IncentiveDownloadUtils;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsancom/san/mads/mraid/deleteDownItem;->EXPAND:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 8
    new-instance v3, Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v5, "USE_CUSTOM_CLOSE"

    const/4 v6, 0x2

    const-string v7, "usecustomclose"

    invoke-direct {v3, v5, v6, v7}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/mads/mraid/deleteDownItem;->USE_CUSTOM_CLOSE:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 9
    new-instance v5, Lccsancom/san/mads/mraid/deleteDownItem$addDownloadListener;

    const-string v7, "OPEN"

    const/4 v8, 0x3

    const-string v9, "open"

    invoke-direct {v5, v7, v8, v9}, Lccsancom/san/mads/mraid/deleteDownItem$addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsancom/san/mads/mraid/deleteDownItem;->OPEN:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 15
    new-instance v7, Lccsancom/san/mads/mraid/deleteDownItem$removeDownloadListener;

    const-string v9, "RESIZE"

    const/4 v10, 0x4

    const-string v11, "resize"

    invoke-direct {v7, v9, v10, v11}, Lccsancom/san/mads/mraid/deleteDownItem$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsancom/san/mads/mraid/deleteDownItem;->RESIZE:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 21
    new-instance v9, Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v11, "SET_ORIENTATION_PROPERTIES"

    const/4 v12, 0x5

    const-string v13, "setOrientationProperties"

    invoke-direct {v9, v11, v12, v13}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lccsancom/san/mads/mraid/deleteDownItem;->SET_ORIENTATION_PROPERTIES:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 22
    new-instance v11, Lccsancom/san/mads/mraid/deleteDownItem$unifiedDownload;

    const-string v13, "PLAY_VIDEO"

    const/4 v14, 0x6

    const-string v15, "playVideo"

    invoke-direct {v11, v13, v14, v15}, Lccsancom/san/mads/mraid/deleteDownItem$unifiedDownload;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lccsancom/san/mads/mraid/deleteDownItem;->PLAY_VIDEO:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 28
    new-instance v13, Lccsancom/san/mads/mraid/deleteDownItem$getDownloadingList;

    const-string v15, "STORE_PICTURE"

    const/4 v14, 0x7

    const-string v12, "storePicture"

    invoke-direct {v13, v15, v14, v12}, Lccsancom/san/mads/mraid/deleteDownItem$getDownloadingList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsancom/san/mads/mraid/deleteDownItem;->STORE_PICTURE:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 34
    new-instance v12, Lccsancom/san/mads/mraid/deleteDownItem$getDownloadStatusByUrl;

    const-string v15, "CREATE_CALENDAR_EVENT"

    const/16 v14, 0x8

    const-string v10, "createCalendarEvent"

    invoke-direct {v12, v15, v14, v10}, Lccsancom/san/mads/mraid/deleteDownItem$getDownloadStatusByUrl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsancom/san/mads/mraid/deleteDownItem;->CREATE_CALENDAR_EVENT:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 40
    new-instance v10, Lccsancom/san/mads/mraid/deleteDownItem;

    const-string v15, "UNSPECIFIED"

    const/16 v14, 0x9

    const-string v8, ""

    invoke-direct {v10, v15, v14, v8}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lccsancom/san/mads/mraid/deleteDownItem;->UNSPECIFIED:Lccsancom/san/mads/mraid/deleteDownItem;

    .line 41
    const/16 v8, 0xa

    new-array v8, v8, [Lccsancom/san/mads/mraid/deleteDownItem;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lccsancom/san/mads/mraid/deleteDownItem;->$VALUES:[Lccsancom/san/mads/mraid/deleteDownItem;

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
    iput-object p3, p0, Lccsancom/san/mads/mraid/deleteDownItem;->mJavascriptString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lccsancom/san/mads/mraid/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/mads/mraid/deleteDownItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static fromJavascriptString(Ljava/lang/String;)Lccsancom/san/mads/mraid/deleteDownItem;
    .locals 5

    .line 1
    invoke-static {}, Lccsancom/san/mads/mraid/deleteDownItem;->values()[Lccsancom/san/mads/mraid/deleteDownItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lccsancom/san/mads/mraid/deleteDownItem;->mJavascriptString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lccsancom/san/mads/mraid/deleteDownItem;->UNSPECIFIED:Lccsancom/san/mads/mraid/deleteDownItem;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/mads/mraid/deleteDownItem;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/mads/mraid/deleteDownItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/mads/mraid/deleteDownItem;

    return-object p0
.end method

.method public static values()[Lccsancom/san/mads/mraid/deleteDownItem;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownItem;->$VALUES:[Lccsancom/san/mads/mraid/deleteDownItem;

    invoke-virtual {v0}, [Lccsancom/san/mads/mraid/deleteDownItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/mads/mraid/deleteDownItem;

    return-object v0
.end method


# virtual methods
.method requiresClick(Lccsancom/san/mads/mraid/getDownloadedCount;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method toJavascriptString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/deleteDownItem;->mJavascriptString:Ljava/lang/String;

    return-object v0
.end method
