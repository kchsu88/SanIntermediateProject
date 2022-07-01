.class final Lccsancom/san/mediation/helper/MintegralHelper$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "MintegralHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/helper/MintegralHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lccsancom/san/mediation/helper/MintegralHelper$1;->val$context:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/san/mediation/helper/MintegralHelper$1;->val$context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/san/mediation/helper/MintegralHelper;->access$000(Lccsanandroid/content/Context;)V

    .line 58
    return-void
.end method
