.class Lccsancom/applovin/impl/sdk/e/o$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/o$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/o$b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/o$b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/o$b$1;->a:Lccsancom/applovin/impl/sdk/e/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/o$b$1;->a:Lccsancom/applovin/impl/sdk/e/o$b;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/e/o$b;->a:Lccsancom/applovin/impl/sdk/e/o;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/e/o;->b(Lccsancom/applovin/impl/sdk/e/o;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "TaskManager"

    const-string v1, "Caught unhandled exception"

    invoke-virtual {p1, v0, v1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
