.class final Lccsancom/mbridge/msdk/mbnative/c/b$11;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .locals 0

    .line 1643
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$11;->c:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$11;->a:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$11;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1647
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$11;->a:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$11;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 1648
    return-void
.end method
