.class Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
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

    .line 237
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->this$0:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    .local v0, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 242
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 243
    .local v2, "view":Lccsanandroid/view/View;
    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 245
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    invoke-static {v4, v3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "inName":Ljava/lang/String;
    invoke-static {v2, v4}, Lccsanandroidx/core/view/ViewCompat;->setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 241
    .end local v2    # "view":Lccsanandroid/view/View;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "inName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
