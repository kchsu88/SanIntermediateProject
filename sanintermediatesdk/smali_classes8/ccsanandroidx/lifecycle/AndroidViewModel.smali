.class public Lccsanandroidx/lifecycle/AndroidViewModel;
.super Lccsanandroidx/lifecycle/ViewModel;
.source "AndroidViewModel.java"


# instance fields
.field private mApplication:Lccsanandroid/app/Application;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Lccsanandroid/app/Application;

    .line 34
    invoke-direct {p0}, Lccsanandroidx/lifecycle/ViewModel;-><init>()V

    .line 35
    iput-object p1, p0, Lccsanandroidx/lifecycle/AndroidViewModel;->mApplication:Lccsanandroid/app/Application;

    .line 36
    return-void
.end method


# virtual methods
.method public getApplication()Lccsanandroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lccsanandroidx/lifecycle/AndroidViewModel;->mApplication:Lccsanandroid/app/Application;

    return-object v0
.end method
