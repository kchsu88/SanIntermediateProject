.class abstract enum Lccsancom/google/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lccsancom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 437
    new-instance v0, Lccsancom/google/common/cache/LocalCache$EntryFactory$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/cache/LocalCache$EntryFactory;->STRONG:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 444
    new-instance v1, Lccsancom/google/common/cache/LocalCache$EntryFactory$2;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 459
    new-instance v3, Lccsancom/google/common/cache/LocalCache$EntryFactory$3;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lccsancom/google/common/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lccsancom/google/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 474
    new-instance v5, Lccsancom/google/common/cache/LocalCache$EntryFactory$4;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lccsancom/google/common/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lccsancom/google/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 490
    new-instance v7, Lccsancom/google/common/cache/LocalCache$EntryFactory$5;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lccsancom/google/common/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lccsancom/google/common/cache/LocalCache$EntryFactory;->WEAK:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 497
    new-instance v9, Lccsancom/google/common/cache/LocalCache$EntryFactory$6;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lccsancom/google/common/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lccsancom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 512
    new-instance v11, Lccsancom/google/common/cache/LocalCache$EntryFactory$7;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lccsancom/google/common/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lccsancom/google/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 527
    new-instance v13, Lccsancom/google/common/cache/LocalCache$EntryFactory$8;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lccsancom/google/common/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lccsancom/google/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 436
    const/16 v15, 0x8

    new-array v14, v15, [Lccsancom/google/common/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/16 v16, 0x6

    aput-object v11, v14, v16

    const/16 v17, 0x7

    aput-object v13, v14, v17

    sput-object v14, Lccsancom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 551
    new-array v14, v15, [Lccsancom/google/common/cache/LocalCache$EntryFactory;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    aput-object v11, v14, v16

    aput-object v13, v14, v17

    sput-object v14, Lccsancom/google/common/cache/LocalCache$EntryFactory;->factories:[Lccsancom/google/common/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILccsancom/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lccsancom/google/common/cache/LocalCache$1;

    .line 436
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lccsancom/google/common/cache/LocalCache$Strength;ZZ)Lccsancom/google/common/cache/LocalCache$EntryFactory;
    .locals 2
    .param p0, "keyStrength"    # Lccsancom/google/common/cache/LocalCache$Strength;
    .param p1, "usesAccessQueue"    # Z
    .param p2, "usesWriteQueue"    # Z

    .line 564
    sget-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->WEAK:Lccsancom/google/common/cache/LocalCache$Strength;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr v0, v1

    .line 568
    .local v0, "flags":I
    sget-object v1, Lccsancom/google/common/cache/LocalCache$EntryFactory;->factories:[Lccsancom/google/common/cache/LocalCache$EntryFactory;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/cache/LocalCache$EntryFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 436
    const-class v0, Lccsancom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/cache/LocalCache$EntryFactory;
    .locals 1

    .line 436
    sget-object v0, Lccsancom/google/common/cache/LocalCache$EntryFactory;->$VALUES:[Lccsancom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0}, [Lccsancom/google/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyAccessEntry(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 598
    .local p1, "original":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lccsancom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 600
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getPreviousInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lccsancom/google/common/cache/LocalCache;->connectAccessOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 601
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lccsancom/google/common/cache/LocalCache;->connectAccessOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 603
    invoke-static {p1}, Lccsancom/google/common/cache/LocalCache;->nullifyAccessOrder(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 604
    return-void
.end method

.method copyEntry(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 591
    .local p1, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lccsancom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lccsancom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lccsancom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method copyWriteEntry(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 610
    .local p1, "original":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lccsancom/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 612
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 613
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 615
    invoke-static {p1}, Lccsancom/google/common/cache/LocalCache;->nullifyWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 616
    return-void
.end method

.method abstract newEntry(Lccsancom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .param p4    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
