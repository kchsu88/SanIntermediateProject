.class final Lccsankotlin/text/DelimitedRangesSequence;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "Lccsankotlin/ranges/IntRange;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012:\u0010\u0008\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0010\u000fJ\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011H\u0096\u0002RB\u0010\u0008\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r0\t\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lccsankotlin/text/DelimitedRangesSequence;",
        "Lccsankotlin/sequences/Sequence;",
        "Lccsankotlin/ranges/IntRange;",
        "input",
        "",
        "startIndex",
        "",
        "limit",
        "getNextMatch",
        "Lccsankotlin/Function2;",
        "Lccsankotlin/ParameterName;",
        "name",
        "currentIndex",
        "Lccsankotlin/Pair;",
        "Lccsankotlin/ExtensionFunctionType;",
        "(Ljava/lang/CharSequence;IILccsankotlin/jvm/functions/Function2;)V",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final getNextMatch:Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function2<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lccsankotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final input:Ljava/lang/CharSequence;

.field private final limit:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILccsankotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .param p4, "getNextMatch"    # Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lccsankotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lccsankotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    iput p2, p0, Lccsankotlin/text/DelimitedRangesSequence;->startIndex:I

    iput p3, p0, Lccsankotlin/text/DelimitedRangesSequence;->limit:I

    iput-object p4, p0, Lccsankotlin/text/DelimitedRangesSequence;->getNextMatch:Lccsankotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getGetNextMatch$p(Lccsankotlin/text/DelimitedRangesSequence;)Lccsankotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/text/DelimitedRangesSequence;

    .line 1171
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence;->getNextMatch:Lccsankotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/text/DelimitedRangesSequence;

    .line 1171
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence;->input:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic access$getLimit$p(Lccsankotlin/text/DelimitedRangesSequence;)I
    .locals 1
    .param p0, "$this"    # Lccsankotlin/text/DelimitedRangesSequence;

    .line 1171
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence;->limit:I

    return v0
.end method

.method public static final synthetic access$getStartIndex$p(Lccsankotlin/text/DelimitedRangesSequence;)I
    .locals 1
    .param p0, "$this"    # Lccsankotlin/text/DelimitedRangesSequence;

    .line 1171
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence;->startIndex:I

    return v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsankotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .line 1178
    new-instance v0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lccsankotlin/text/DelimitedRangesSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 1226
    return-object v0
.end method
