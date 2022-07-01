.class final Lccsanandroidx/fragment/app/FragmentManagerViewModel$1;
.super Ljava/lang/Object;
.source "FragmentManagerViewModel.java"

# interfaces
.implements Lccsanandroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Lccsanandroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerViewModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 46
    .local v0, "viewModel":Lccsanandroidx/fragment/app/FragmentManagerViewModel;
    return-object v0
.end method
