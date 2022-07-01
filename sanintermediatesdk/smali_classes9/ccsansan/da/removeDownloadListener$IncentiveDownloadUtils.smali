.class public final enum Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/da/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncentiveDownloadUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

.field public static final enum RW:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

.field public static final enum Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

.field public static final enum Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    const-string v1, "Read"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Read:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    new-instance v1, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    const-string v3, "Write"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->Write:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    new-instance v3, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    const-string v5, "RW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->RW:Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    .line 2
    const/4 v5, 0x3

    new-array v5, v5, [Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->$VALUES:[Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

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

.method public static valueOf(Ljava/lang/String;)Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;
    .locals 1

    .line 1
    const-class v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    return-object p0
.end method

.method public static values()[Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->$VALUES:[Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    invoke-virtual {v0}, [Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/da/removeDownloadListener$IncentiveDownloadUtils;

    return-object v0
.end method
