.class public Lccsanandroidx/multidex/MultiDexApplication;
.super Lccsanandroid/app/Application;
.source "MultiDexApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lccsanandroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Lccsanandroid/content/Context;

    .line 38
    invoke-super {p0, p1}, Lccsanandroid/app/Application;->attachBaseContext(Lccsanandroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lccsanandroidx/multidex/MultiDex;->install(Lccsanandroid/content/Context;)V

    .line 40
    return-void
.end method
