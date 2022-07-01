.class final synthetic Lccsankotlin/text/Regex$findAll$2;
.super Lccsankotlin/jvm/internal/FunctionReferenceImpl;
.source "Regex.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/Regex;->findAll(Ljava/lang/CharSequence;I)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/FunctionReferenceImpl;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Lccsankotlin/text/MatchResult;",
        "Lccsankotlin/text/MatchResult;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lccsankotlin/text/MatchResult;",
        "p1",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/text/Regex$findAll$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/text/Regex$findAll$2;

    invoke-direct {v0}, Lccsankotlin/text/Regex$findAll$2;-><init>()V

    sput-object v0, Lccsankotlin/text/Regex$findAll$2;->INSTANCE:Lccsankotlin/text/Regex$findAll$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lccsankotlin/text/MatchResult;

    const/4 v1, 0x1

    const-string v3, "next"

    const-string v4, "next()Lccsankotlin/text/MatchResult;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Lccsankotlin/text/MatchResult;

    invoke-virtual {p0, p1}, Lccsankotlin/text/Regex$findAll$2;->invoke(Lccsankotlin/text/MatchResult;)Lccsankotlin/text/MatchResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lccsankotlin/text/MatchResult;)Lccsankotlin/text/MatchResult;
    .locals 1
    .param p1, "p1"    # Lccsankotlin/text/MatchResult;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Lccsankotlin/text/MatchResult;->next()Lccsankotlin/text/MatchResult;

    move-result-object v0

    return-object v0
.end method
