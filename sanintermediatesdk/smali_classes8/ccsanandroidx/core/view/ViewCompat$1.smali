.class Lccsanandroidx/core/view/ViewCompat$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lccsanandroidx/core/view/OnReceiveContentViewBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveContent(Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;
    .locals 0
    .param p1, "payload"    # Lccsanandroidx/core/view/ContentInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    .line 2829
    return-object p1
.end method
