.class final enum Lccsansan/x/getDownloadingList$removeDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/x/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "removeDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/x/getDownloadingList$removeDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum ConnectAcquire:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum ConnectEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum ConnectSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum ConnectSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum ConnectStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum DNSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum DNSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum Init:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum RecvBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum RecvBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum RecvHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum RecvHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum SendBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum SendBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum SendHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum SendHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field public static final enum Success:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field private static final VALUES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/x/getDownloadingList$removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v1, "Init"

    const/4 v2, 0x0

    const-string v3, "init"

    invoke-direct {v0, v1, v2, v3}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->Init:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v1, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v3, "DNSStart"

    const/4 v4, 0x1

    const-string v5, "dns_start"

    invoke-direct {v1, v3, v4, v5}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lccsansan/x/getDownloadingList$removeDownloadListener;->DNSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v3, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v5, "DNSEnd"

    const/4 v6, 0x2

    const-string v7, "dns_end"

    invoke-direct {v3, v5, v6, v7}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsansan/x/getDownloadingList$removeDownloadListener;->DNSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v5, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v7, "ConnectStart"

    const/4 v8, 0x3

    const-string v9, "connect_start"

    invoke-direct {v5, v7, v8, v9}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v7, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v9, "ConnectSStart"

    const/4 v10, 0x4

    const-string v11, "connect_s_start"

    invoke-direct {v7, v9, v10, v11}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v9, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v11, "ConnectSEnd"

    const/4 v12, 0x5

    const-string v13, "connect_s_end"

    invoke-direct {v9, v11, v12, v13}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v11, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v13, "ConnectEnd"

    const/4 v14, 0x6

    const-string v15, "connect_end"

    invoke-direct {v11, v13, v14, v15}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v13, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "ConnectAcquire"

    const/4 v14, 0x7

    const-string v12, "connect_acq"

    invoke-direct {v13, v15, v14, v12}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectAcquire:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 2
    new-instance v12, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "SendHeaderStart"

    const/16 v14, 0x8

    const-string v10, "send_header_start"

    invoke-direct {v12, v15, v14, v10}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v10, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "SendHeaderEnd"

    const/16 v14, 0x9

    const-string v8, "send_header_end"

    invoke-direct {v10, v15, v14, v8}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v8, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "SendBodyStart"

    const/16 v14, 0xa

    const-string v6, "send_body_start"

    invoke-direct {v8, v15, v14, v6}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v6, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "SendBodyEnd"

    const/16 v14, 0xb

    const-string v4, "send_body_end"

    invoke-direct {v6, v15, v14, v4}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v4, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "RecvHeaderStart"

    const/16 v14, 0xc

    const-string v2, "recv_header_start"

    invoke-direct {v4, v15, v14, v2}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v2, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "RecvHeaderEnd"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "recv_header_end"

    invoke-direct {v2, v15, v14, v4}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    new-instance v4, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "RecvBodyStart"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "recv_body_start"

    invoke-direct {v4, v15, v14, v2}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v2, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "RecvBodyEnd"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "recv_body_end"

    invoke-direct {v2, v15, v14, v4}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    new-instance v4, Lccsansan/x/getDownloadingList$removeDownloadListener;

    const-string v15, "Success"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "success"

    invoke-direct {v4, v15, v14, v2}, Lccsansan/x/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsansan/x/getDownloadingList$removeDownloadListener;->Success:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 4
    const/16 v2, 0x11

    new-array v2, v2, [Lccsansan/x/getDownloadingList$removeDownloadListener;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lccsansan/x/getDownloadingList$removeDownloadListener;->$VALUES:[Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->VALUES:Ljava/util/Map;

    .line 18
    invoke-static {}, Lccsansan/x/getDownloadingList$removeDownloadListener;->values()[Lccsansan/x/getDownloadingList$removeDownloadListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 19
    sget-object v4, Lccsansan/x/getDownloadingList$removeDownloadListener;->VALUES:Ljava/util/Map;

    iget-object v5, v3, Lccsansan/x/getDownloadingList$removeDownloadListener;->mValue:Ljava/lang/String;

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
    iput-object p3, p0, Lccsansan/x/getDownloadingList$removeDownloadListener;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lccsansan/x/getDownloadingList$removeDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->VALUES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/x/getDownloadingList$removeDownloadListener;

    goto :goto_0

    :cond_0
    sget-object p0, Lccsansan/x/getDownloadingList$removeDownloadListener;->Init:Lccsansan/x/getDownloadingList$removeDownloadListener;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/x/getDownloadingList$removeDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/x/getDownloadingList$removeDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/x/getDownloadingList$removeDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/x/getDownloadingList$removeDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->$VALUES:[Lccsansan/x/getDownloadingList$removeDownloadListener;

    invoke-virtual {v0}, [Lccsansan/x/getDownloadingList$removeDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/x/getDownloadingList$removeDownloadListener;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/x/getDownloadingList$removeDownloadListener;->mValue:Ljava/lang/String;

    return-object v0
.end method
