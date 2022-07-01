.class public final Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;
.super Lccsanandroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(Lccsanandroidx/loader/content/Loader;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/loader/content/Loader;

    .line 58
    .local p0, "this":Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;, "Lccsanandroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    iput-object p1, p0, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Lccsanandroidx/loader/content/Loader;

    .line 59
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lccsanandroid/database/ContentObserver;-><init>(Lccsanandroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 64
    .local p0, "this":Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;, "Lccsanandroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 69
    .local p0, "this":Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;, "Lccsanandroidx/loader/content/Loader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Lccsanandroidx/loader/content/Loader$ForceLoadContentObserver;->this$0:Lccsanandroidx/loader/content/Loader;

    invoke-virtual {v0}, Lccsanandroidx/loader/content/Loader;->onContentChanged()V

    .line 70
    return-void
.end method
