.class final Lccsankotlin/text/Regex$findAll$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "Regex.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function0<",
        "Lccsankotlin/text/MatchResult;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lccsankotlin/text/MatchResult;",
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
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $startIndex:I

.field final synthetic this$0:Lccsankotlin/text/Regex;


# direct methods
.method constructor <init>(Lccsankotlin/text/Regex;Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/text/Regex$findAll$1;->this$0:Lccsankotlin/text/Regex;

    iput-object p2, p0, Lccsankotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lccsankotlin/text/Regex$findAll$1;->$startIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lccsankotlin/text/Regex$findAll$1;->invoke()Lccsankotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lccsankotlin/text/MatchResult;
    .locals 3

    .line 136
    iget-object v0, p0, Lccsankotlin/text/Regex$findAll$1;->this$0:Lccsankotlin/text/Regex;

    iget-object v1, p0, Lccsankotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    iget v2, p0, Lccsankotlin/text/Regex$findAll$1;->$startIndex:I

    invoke-virtual {v0, v1, v2}, Lccsankotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lccsankotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method
