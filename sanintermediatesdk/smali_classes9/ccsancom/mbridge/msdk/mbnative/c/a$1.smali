.class final Lccsancom/mbridge/msdk/mbnative/c/a$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/a$1;->a:Lccsancom/mbridge/msdk/mbnative/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a$1;->a:Lccsancom/mbridge/msdk/mbnative/c/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/a;->a(Lccsancom/mbridge/msdk/mbnative/c/a;)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
