.class final Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$1;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$1;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$1;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->dismiss()V

    .line 96
    return-void
.end method
