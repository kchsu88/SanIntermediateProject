.class public Lccsancom/google/common/collect/Interners$InternerBuilder;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternerBuilder"
.end annotation


# instance fields
.field private final mapMaker:Lccsancom/google/common/collect/MapMaker;

.field private strong:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lccsancom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lccsancom/google/common/collect/MapMaker;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/Interners$1;

    .line 43
    invoke-direct {p0}, Lccsancom/google/common/collect/Interners$InternerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/Interner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->strong:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lccsancom/google/common/collect/MapMaker;

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->weakKeys()Lccsancom/google/common/collect/MapMaker;

    .line 84
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Interners$InternerImpl;

    iget-object v1, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lccsancom/google/common/collect/MapMaker;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Interners$InternerImpl;-><init>(Lccsancom/google/common/collect/MapMaker;Lccsancom/google/common/collect/Interners$1;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lccsancom/google/common/collect/Interners$InternerBuilder;
    .locals 1
    .param p1, "concurrencyLevel"    # I

    .line 76
    iget-object v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lccsancom/google/common/collect/MapMaker;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel(I)Lccsancom/google/common/collect/MapMaker;

    .line 77
    return-object p0
.end method

.method public strong()Lccsancom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 56
    return-object p0
.end method

.method public weak()Lccsancom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/collect/Interners$InternerBuilder;->strong:Z

    .line 67
    return-object p0
.end method
