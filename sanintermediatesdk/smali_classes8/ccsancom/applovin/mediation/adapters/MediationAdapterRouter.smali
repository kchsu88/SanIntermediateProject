.class public abstract Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;,
        Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;
    }
.end annotation


# static fields
.field private static final sharedInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sharedInstancesLock:Ljava/lang/Object;


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/lang/Object;

.field private final loadedAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/applovin/mediation/adapter/MaxAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedAdaptersLock:Ljava/lang/Object;

.field protected mOnCompletionListener:Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

.field private mSdk:Lccsancom/applovin/impl/sdk/k;

.field private final mTag:Ljava/lang/String;

.field private final showingAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/applovin/mediation/adapter/MaxAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final showingAdaptersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstancesLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinSdk;->getMediationProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    iput-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lccsancom/applovin/impl/sdk/k;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lccsancom/applovin/impl/sdk/k;

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    const-string v1, "Invalid mediation provider detected. Please set AppLovin SDK mediation provider to MAX via AppLovinSdk.getInstance(context).setMediationProvider( AppLovinMediationProvider.MAX )"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private addAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private addLoadedAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->isAdLoaded(Lccsancom/applovin/mediation/adapter/MaxAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static getSharedInstance(Ljava/lang/Class;)Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;
    .locals 5

    sget-object v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    :try_start_2
    sget-object p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->isAdShowing(Lccsancom/applovin/mediation/adapter/MaxAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private isAdLoaded(Lccsancom/applovin/mediation/adapter/MaxAdapter;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isAdShowing(Lccsancom/applovin/mediation/adapter/MaxAdapter;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeLoadedAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeShowingAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addAdViewAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Ljava/lang/String;Lccsanandroid/view/View;)V
    .locals 6

    sget-object v4, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V

    return-void
.end method

.method public addInterstitialAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V

    return-void
.end method

.method public addRewardedAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Lccsanandroid/view/View;)V

    return-void
.end method

.method public addShowingAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getReward(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxReward;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object p1

    instance-of v1, p1, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;

    if-eqz v1, :cond_0

    check-cast p1, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->getReward()Lccsancom/applovin/mediation/MaxReward;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->createDefault()Lccsancom/applovin/mediation/MaxReward;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method abstract initialize(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected onAdClicked(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_1

    const-string v1, "Interstitial clicked"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdClicked()V

    goto :goto_0

    :cond_1
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_2

    const-string v1, "Rewarded clicked"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdClicked()V

    goto :goto_0

    :cond_2
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "AdView clicked"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdClicked()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdDisplayFailed(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdDisplayed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->onAdDisplayed(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method protected onAdDisplayed(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_1

    const-string v1, "Interstitial shown"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayed(Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_2

    const-string v1, "Rewarded shown"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayed(Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "AdView shown"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayed(Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdHidden(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_1

    const-string v1, "Interstitial hidden"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdHidden()V

    goto :goto_0

    :cond_1
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_2

    const-string v1, "Rewarded hidden"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdHidden()V

    goto :goto_0

    :cond_2
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "AdView hidden"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdHidden()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdLoaded(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->onAdLoaded(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method protected onAdLoaded(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->addLoadedAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_1

    const-string v0, "Interstitial loaded"

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v2, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoaded(Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_2

    const-string v0, "Rewarded loaded"

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v2, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoaded(Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_0

    const-string v1, "AdView loaded"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAdViewAdCollapsed(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "AdView collapsed"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdCollapsed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAdViewAdExpanded(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "AdView expanded"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdExpanded()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRewardedAdVideoCompleted(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "Rewarded video completed"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdVideoCompleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onRewardedAdVideoStarted(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    const-string v1, "Rewarded video started"

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdVideoStarted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onUserRewarded(Ljava/lang/String;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 3

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded user with reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onUserRewarded(Lccsancom/applovin/mediation/MaxReward;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->removeLoadedAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->removeShowingAdapter(Lccsancom/applovin/mediation/adapter/MaxAdapter;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v3}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v4

    if-ne v4, p1, :cond_0

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method protected shouldAlwaysRewardUser(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object p1

    instance-of v2, p1, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;

    if-eqz v2, :cond_0

    check-cast p1, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;->shouldAlwaysRewardUser()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateAdView(Lccsanandroid/view/View;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdView()Lccsanandroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->setAdView(Lccsanandroid/view/View;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
