.class final Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "Regex.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/MatcherMatchResult$groups$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lccsankotlin/text/MatchGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lccsankotlin/text/MatchGroup;",
        "it",
        "",
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
.field final synthetic this$0:Lccsankotlin/text/MatcherMatchResult$groups$1;


# direct methods
.method constructor <init>(Lccsankotlin/text/MatcherMatchResult$groups$1;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Lccsankotlin/text/MatcherMatchResult$groups$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(I)Lccsankotlin/text/MatchGroup;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(I)Lccsankotlin/text/MatchGroup;
    .locals 1
    .param p1, "it"    # I

    .line 329
    iget-object v0, p0, Lccsankotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Lccsankotlin/text/MatcherMatchResult$groups$1;

    invoke-virtual {v0, p1}, Lccsankotlin/text/MatcherMatchResult$groups$1;->get(I)Lccsankotlin/text/MatchGroup;

    move-result-object v0

    return-object v0
.end method
