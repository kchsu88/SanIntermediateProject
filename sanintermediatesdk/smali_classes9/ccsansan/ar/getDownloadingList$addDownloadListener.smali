.class public final enum Lccsansan/ar/getDownloadingList$addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ar/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/ar/getDownloadingList$addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum CONNECTED:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum CUSTOM_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum DEFAULT:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum ENTER_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum PAGE_IN_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum PAGE_OUT_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

.field public static final enum UNHANDLE_EXCEPTION_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v1, "ENTER_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->ENTER_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v1, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v3, "QUIT_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v3, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v5, "IN_HOMEPAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/ar/getDownloadingList$addDownloadListener;->IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v5, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v7, "CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONNECTED:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v7, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v9, "CONTINUE_UPLOAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v9, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v11, "PAGE_IN_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_IN_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v11, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v13, "PAGE_OUT_EVENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_OUT_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v13, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v15, "UNHANDLE_EXCEPTION_EVENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lccsansan/ar/getDownloadingList$addDownloadListener;->UNHANDLE_EXCEPTION_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v15, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v14, "CUSTOM_EVENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lccsansan/ar/getDownloadingList$addDownloadListener;->CUSTOM_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    new-instance v14, Lccsansan/ar/getDownloadingList$addDownloadListener;

    const-string v12, "DEFAULT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lccsansan/ar/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lccsansan/ar/getDownloadingList$addDownloadListener;->DEFAULT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    .line 2
    const/16 v12, 0xa

    new-array v12, v12, [Lccsansan/ar/getDownloadingList$addDownloadListener;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lccsansan/ar/getDownloadingList$addDownloadListener;->$VALUES:[Lccsansan/ar/getDownloadingList$addDownloadListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/ar/getDownloadingList$addDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/ar/getDownloadingList$addDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/ar/getDownloadingList$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->$VALUES:[Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-virtual {v0}, [Lccsansan/ar/getDownloadingList$addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ar/getDownloadingList$addDownloadListener;

    return-object v0
.end method
