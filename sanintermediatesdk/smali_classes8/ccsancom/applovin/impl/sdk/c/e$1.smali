.class final Lccsancom/applovin/impl/sdk/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/c/e;->a(Lccsanandroid/content/SharedPreferences$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lccsanandroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/c/e$1;->a:Lccsanandroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/e$1;->a:Lccsanandroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Lccsanandroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
