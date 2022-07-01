.class final Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediationAdapterRouterListenerWrapper"
.end annotation


# instance fields
.field private mAdView:Lccsanandroid/view/View;

.field private final mAdapter:Lccsancom/applovin/mediation/adapter/MaxAdapter;

.field private final mListener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

.field private final mLoadType:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

.field final synthetic this$0:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mAdapter:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    iput-object p3, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mListener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    iput-object p4, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mLoadType:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    iput-object p5, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mAdView:Lccsanandroid/view/View;

    return-void
.end method


# virtual methods
.method getAdView()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mAdView:Lccsanandroid/view/View;

    return-object v0
.end method

.method getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mAdapter:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    return-object v0
.end method

.method getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mListener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    return-object v0
.end method

.method getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mLoadType:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    return-object v0
.end method

.method setAdView(Lccsanandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->mAdView:Lccsanandroid/view/View;

    return-void
.end method
