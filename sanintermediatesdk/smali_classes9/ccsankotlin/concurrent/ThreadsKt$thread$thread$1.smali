.class public final Lccsankotlin/concurrent/ThreadsKt$thread$thread$1;
.super Ljava/lang/Thread;
.source "Thread.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/concurrent/ThreadsKt;->thread(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILccsankotlin/jvm/functions/Function0;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/concurrent/ThreadsKt$thread$thread$1",
        "Ljava/lang/Thread;",
        "run",
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
.field final synthetic $block:Lccsankotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lccsankotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Lccsankotlin/jvm/functions/Function0;

    .line 28
    iput-object p1, p0, Lccsankotlin/concurrent/ThreadsKt$thread$thread$1;->$block:Lccsankotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lccsankotlin/concurrent/ThreadsKt$thread$thread$1;->$block:Lccsankotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    return-void
.end method
