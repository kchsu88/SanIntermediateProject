.class final Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;
.super Lccsankotlin/jvm/internal/Lambda;
.source "Strings.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/StringsKt__StringsKt;->rangesDelimitedBy$StringsKt__StringsKt(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function2<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Lccsankotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1485:1\n1#2:1486\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lccsankotlin/Pair;",
        "",
        "",
        "currentIndex",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $delimitersList:Ljava/util/List;

.field final synthetic $ignoreCase:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    iput-boolean p2, p0, Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->invoke(Ljava/lang/CharSequence;I)Lccsankotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/CharSequence;I)Lccsankotlin/Pair;
    .locals 4
    .param p1, "$receiver"    # Ljava/lang/CharSequence;
    .param p2, "currentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lccsankotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$delimitersList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-boolean v1, p0, Lccsankotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;->$ignoreCase:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lccsankotlin/text/StringsKt__StringsKt;->access$findAnyOf(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Lccsankotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    .local v0, "it":Lccsankotlin/Pair;
    const/4 v1, 0x0

    .line 1266
    .local v1, "$i$a$-let-StringsKt__StringsKt$rangesDelimitedBy$2$1":I
    invoke-virtual {v0}, Lccsankotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lccsankotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lccsankotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lccsankotlin/Pair;

    move-result-object v0

    .end local v0    # "it":Lccsankotlin/Pair;
    .end local v1    # "$i$a$-let-StringsKt__StringsKt$rangesDelimitedBy$2$1":I
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method