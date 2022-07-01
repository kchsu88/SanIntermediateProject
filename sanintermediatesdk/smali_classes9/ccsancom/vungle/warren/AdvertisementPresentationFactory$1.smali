.class Lccsancom/vungle/warren/AdvertisementPresentationFactory$1;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"

# interfaces
.implements Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdvertisementPresentationFactory;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdvertisementPresentationFactory;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory;

    .line 549
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lccsancom/vungle/warren/AdvertisementPresentationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;)V
    .locals 1
    .param p1, "ad"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "pl"    # Lccsancom/vungle/warren/model/Placement;

    .line 553
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$1;->this$0:Lccsancom/vungle/warren/AdvertisementPresentationFactory;

    invoke-static {v0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$502(Lccsancom/vungle/warren/AdvertisementPresentationFactory;Lccsancom/vungle/warren/model/Advertisement;)Lccsancom/vungle/warren/model/Advertisement;

    .line 554
    return-void
.end method
