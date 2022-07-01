.class public final enum Lccsansan/bw/setAdFormat$addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/setAdFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/bw/setAdFormat$addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/bw/setAdFormat$addDownloadListener;

.field public static final enum DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

.field public static final enum NO_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

.field public static final enum SINGLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

.field public static final enum UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lccsansan/bw/setAdFormat$addDownloadListener;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsansan/bw/setAdFormat$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;

    new-instance v1, Lccsansan/bw/setAdFormat$addDownloadListener;

    const-string v3, "NO_ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsansan/bw/setAdFormat$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsansan/bw/setAdFormat$addDownloadListener;->NO_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    new-instance v3, Lccsansan/bw/setAdFormat$addDownloadListener;

    const-string v5, "SINGLE_ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsansan/bw/setAdFormat$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsansan/bw/setAdFormat$addDownloadListener;->SINGLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    new-instance v5, Lccsansan/bw/setAdFormat$addDownloadListener;

    const-string v7, "DOUBLE_ACTIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsansan/bw/setAdFormat$addDownloadListener;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsansan/bw/setAdFormat$addDownloadListener;->DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    .line 2
    const/4 v7, 0x4

    new-array v7, v7, [Lccsansan/bw/setAdFormat$addDownloadListener;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsansan/bw/setAdFormat$addDownloadListener;->$VALUES:[Lccsansan/bw/setAdFormat$addDownloadListener;

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

.method public static valueOf(Ljava/lang/String;)Lccsansan/bw/setAdFormat$addDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/bw/setAdFormat$addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/bw/setAdFormat$addDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/bw/setAdFormat$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->$VALUES:[Lccsansan/bw/setAdFormat$addDownloadListener;

    invoke-virtual {v0}, [Lccsansan/bw/setAdFormat$addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/bw/setAdFormat$addDownloadListener;

    return-object v0
.end method
