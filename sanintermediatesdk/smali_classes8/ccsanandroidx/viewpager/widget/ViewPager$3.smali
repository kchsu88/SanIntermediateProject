.class Lccsanandroidx/viewpager/widget/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager/widget/ViewPager;

    .line 269
    iput-object p1, p0, Lccsanandroidx/viewpager/widget/ViewPager$3;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/ViewPager$3;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 273
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/ViewPager$3;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lccsanandroidx/viewpager/widget/ViewPager;->populate()V

    .line 274
    return-void
.end method
