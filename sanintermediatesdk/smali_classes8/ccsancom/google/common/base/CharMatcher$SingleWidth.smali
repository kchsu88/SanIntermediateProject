.class final Lccsancom/google/common/base/CharMatcher$SingleWidth;
.super Lccsancom/google/common/base/CharMatcher$RangesMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleWidth"
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/base/CharMatcher$SingleWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1475
    new-instance v0, Lccsancom/google/common/base/CharMatcher$SingleWidth;

    invoke-direct {v0}, Lccsancom/google/common/base/CharMatcher$SingleWidth;-><init>()V

    sput-object v0, Lccsancom/google/common/base/CharMatcher$SingleWidth;->INSTANCE:Lccsancom/google/common/base/CharMatcher$SingleWidth;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1478
    nop

    .line 1480
    const-string v0, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1481
    const-string/jumbo v1, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1478
    const-string v2, "CharMatcher.singleWidth()"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    .line 1482
    return-void
.end method