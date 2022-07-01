.class Lccsancom/vungle/warren/ServiceLocator$25;
.super Ljava/lang/Object;
.source "ServiceLocator.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reConfigVungle()V
    .locals 0

    .line 334
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->reConfigure()V

    .line 335
    return-void
.end method
