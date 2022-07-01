.class final Lccsancom/google/common/io/CharSource$EmptyCharSource;
.super Lccsancom/google/common/io/CharSource$StringCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCharSource"
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/io/CharSource$EmptyCharSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 587
    new-instance v0, Lccsancom/google/common/io/CharSource$EmptyCharSource;

    invoke-direct {v0}, Lccsancom/google/common/io/CharSource$EmptyCharSource;-><init>()V

    sput-object v0, Lccsancom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lccsancom/google/common/io/CharSource$EmptyCharSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 590
    const-string v0, ""

    invoke-direct {p0, v0}, Lccsancom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method static synthetic access$000()Lccsancom/google/common/io/CharSource$EmptyCharSource;
    .locals 1

    .line 585
    sget-object v0, Lccsancom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lccsancom/google/common/io/CharSource$EmptyCharSource;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 595
    const-string v0, "CharSource.empty()"

    return-object v0
.end method
