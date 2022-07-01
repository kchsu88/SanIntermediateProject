.class public final enum Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/getMinIntervalToReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

.field public static final enum DEVICE_PAD:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

.field public static final enum DEVICE_PHONE:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

.field private static final VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    const-string v1, "DEVICE_PHONE"

    const/4 v2, 0x0

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3}, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->DEVICE_PHONE:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    new-instance v1, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    const-string v3, "DEVICE_PAD"

    const/4 v4, 0x1

    const-string v5, "pad"

    invoke-direct {v1, v3, v4, v5}, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->DEVICE_PAD:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    .line 2
    const/4 v3, 0x2

    new-array v3, v3, [Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->$VALUES:[Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->VALUES:Ljava/util/Map;

    .line 8
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->values()[Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 9
    sget-object v4, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->VALUES:Ljava/util/Map;

    iget-object v5, v3, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->mValue:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->VALUES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->$VALUES:[Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    invoke-virtual {v0}, [Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->mValue:Ljava/lang/String;

    return-object v0
.end method
