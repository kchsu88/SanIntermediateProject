.class final Lccsankotlin/jvm/internal/TypeReference$asString$args$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "TypeReference.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/jvm/internal/TypeReference;->asString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Lccsankotlin/reflect/KTypeProjection;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lccsankotlin/reflect/KTypeProjection;",
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
.field final synthetic this$0:Lccsankotlin/jvm/internal/TypeReference;


# direct methods
.method constructor <init>(Lccsankotlin/jvm/internal/TypeReference;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/jvm/internal/TypeReference$asString$args$1;->this$0:Lccsankotlin/jvm/internal/TypeReference;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lccsankotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "it"    # Lccsankotlin/reflect/KTypeProjection;

    const-string v0, "it"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lccsankotlin/jvm/internal/TypeReference$asString$args$1;->this$0:Lccsankotlin/jvm/internal/TypeReference;

    invoke-static {v0, p1}, Lccsankotlin/jvm/internal/TypeReference;->access$asString(Lccsankotlin/jvm/internal/TypeReference;Lccsankotlin/reflect/KTypeProjection;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lccsankotlin/reflect/KTypeProjection;

    invoke-virtual {p0, p1}, Lccsankotlin/jvm/internal/TypeReference$asString$args$1;->invoke(Lccsankotlin/reflect/KTypeProjection;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
