.class final Lccsancom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lccsancom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1242
    new-instance v0, Lccsancom/google/common/base/CharMatcher$BreakingWhitespace;

    invoke-direct {v0}, Lccsancom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    sput-object v0, Lccsancom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lccsancom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1240
    invoke-direct {p0}, Lccsancom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lccsancom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 1246
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 1263
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_0

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1261
    :sswitch_0
    return v0

    .line 1259
    :sswitch_1
    return v1

    .line 1263
    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x85 -> :sswitch_1
        0x1680 -> :sswitch_1
        0x2007 -> :sswitch_0
        0x2028 -> :sswitch_1
        0x2029 -> :sswitch_1
        0x205f -> :sswitch_1
        0x3000 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1269
    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
