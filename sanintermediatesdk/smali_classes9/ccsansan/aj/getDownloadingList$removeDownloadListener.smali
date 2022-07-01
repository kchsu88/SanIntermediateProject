.class public final enum Lccsansan/aj/getDownloadingList$removeDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/aj/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "removeDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/aj/getDownloadingList$removeDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum HAD_RELEASE_HAD_RESERVE_NOT_NET:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum NO_AVAILABLE_VERSION:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum NO_STORAGE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

.field public static final enum OTHER:Lccsansan/aj/getDownloadingList$removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v1, "NO_RELEASE_NO_RESERVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    new-instance v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v3, "NO_RELEASE_HAD_RESERVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    new-instance v3, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v5, "HAD_RELEASE_NO_RESERVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    .line 2
    new-instance v5, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v7, "NO_AVAILABLE_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_AVAILABLE_VERSION:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    new-instance v7, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v9, "NO_STORAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_STORAGE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    new-instance v9, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v11, "HAD_RELEASE_HAD_RESERVE_NOT_NET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_HAD_RESERVE_NOT_NET:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    new-instance v11, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsansan/aj/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsansan/aj/getDownloadingList$removeDownloadListener;->OTHER:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    .line 3
    const/4 v13, 0x7

    new-array v13, v13, [Lccsansan/aj/getDownloadingList$removeDownloadListener;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lccsansan/aj/getDownloadingList$removeDownloadListener;->$VALUES:[Lccsansan/aj/getDownloadingList$removeDownloadListener;

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

.method public static valueOf(Ljava/lang/String;)Lccsansan/aj/getDownloadingList$removeDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/aj/getDownloadingList$removeDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/aj/getDownloadingList$removeDownloadListener;->$VALUES:[Lccsansan/aj/getDownloadingList$removeDownloadListener;

    invoke-virtual {v0}, [Lccsansan/aj/getDownloadingList$removeDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/aj/getDownloadingList$removeDownloadListener;

    return-object v0
.end method
