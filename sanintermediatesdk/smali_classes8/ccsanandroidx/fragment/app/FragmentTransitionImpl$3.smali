.class Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransitionImpl;->scheduleNameReset(Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    .line 296
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->this$0:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 299
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 301
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 302
    .local v2, "view":Lccsanandroid/view/View;
    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;->val$nameOverrides:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 304
    .local v4, "inName":Ljava/lang/String;
    invoke-static {v2, v4}, Lccsanandroidx/core/view/ViewCompat;->setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 300
    .end local v2    # "view":Lccsanandroid/view/View;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "inName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
