.class public Lccsanandroidx/lifecycle/LifecycleRegistry;
.super Lccsanandroidx/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/arch/core/internal/FastSafeIterableMap<",
            "Lccsanandroidx/lifecycle/LifecycleObserver;",
            "Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lccsanandroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "provider"    # Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 94
    invoke-direct {p0}, Lccsanandroidx/lifecycle/Lifecycle;-><init>()V

    .line 56
    new-instance v0, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-direct {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 73
    iput-boolean v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 74
    iput-boolean v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->INITIALIZED:Lccsanandroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 97
    return-void
.end method

.method private backwardPass(Lccsanandroidx/lifecycle/LifecycleOwner;)V
    .locals 5
    .param p1, "lifecycleOwner"    # Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 307
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 308
    invoke-virtual {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 309
    .local v0, "descendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 311
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 312
    .local v2, "observer":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1
    iget-object v3, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lccsanandroidx/lifecycle/LifecycleRegistry;->downEvent(Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 315
    .local v3, "event":Lccsanandroidx/lifecycle/Lifecycle$Event;
    invoke-static {v3}, Lccsanandroidx/lifecycle/LifecycleRegistry;->getStateAfter(Lccsanandroidx/lifecycle/Lifecycle$Event;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-direct {p0, v4}, Lccsanandroidx/lifecycle/LifecycleRegistry;->pushParentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 316
    invoke-virtual {v2, p1, v3}, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 317
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 318
    .end local v3    # "event":Lccsanandroidx/lifecycle/Lifecycle$Event;
    goto :goto_1

    .line 319
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_0
    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method private calculateTargetState(Lccsanandroidx/lifecycle/LifecycleObserver;)Lccsanandroidx/lifecycle/Lifecycle$State;
    .locals 4
    .param p1, "observer"    # Lccsanandroidx/lifecycle/LifecycleObserver;

    .line 159
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->ceil(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 161
    .local v0, "previous":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 162
    .local v2, "siblingState":Lccsanandroidx/lifecycle/Lifecycle$State;
    :goto_0
    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 164
    .local v1, "parentState":Lccsanandroidx/lifecycle/Lifecycle$State;
    :cond_1
    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v3, v2}, Lccsanandroidx/lifecycle/LifecycleRegistry;->min(Lccsanandroidx/lifecycle/Lifecycle$State;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    invoke-static {v3, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->min(Lccsanandroidx/lifecycle/Lifecycle$State;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    return-object v3
.end method

.method private static downEvent(Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$Event;
    .locals 3
    .param p0, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 261
    sget-object v0, Lccsanandroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Lccsanandroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 269
    :pswitch_1
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 267
    :pswitch_2
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 265
    :pswitch_3
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 263
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private forwardPass(Lccsanandroidx/lifecycle/LifecycleOwner;)V
    .locals 5
    .param p1, "lifecycleOwner"    # Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 292
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 293
    invoke-virtual {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->iteratorWithAdditions()Lccsanandroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    .line 294
    .local v0, "ascendingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 297
    .local v2, "observer":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :goto_1
    iget-object v3, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Lccsanandroidx/lifecycle/LifecycleRegistry;->pushParentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 300
    iget-object v3, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lccsanandroidx/lifecycle/LifecycleRegistry;->upEvent(Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 301
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_1

    .line 303
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    .end local v2    # "observer":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    :cond_0
    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method static getStateAfter(Lccsanandroidx/lifecycle/Lifecycle$Event;)Lccsanandroidx/lifecycle/Lifecycle$State;
    .locals 3
    .param p0, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 243
    sget-object v0, Lccsanandroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Lccsanandroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_0
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->DESTROYED:Lccsanandroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 251
    :pswitch_1
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 249
    :pswitch_2
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 246
    :pswitch_3
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->CREATED:Lccsanandroidx/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSynced()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v0, v0, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 154
    .local v0, "eldestObserverState":Lccsanandroidx/lifecycle/Lifecycle$State;
    iget-object v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 155
    .local v2, "newestObserverState":Lccsanandroidx/lifecycle/Lifecycle$State;
    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static min(Lccsanandroidx/lifecycle/Lifecycle$State;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$State;
    .locals 1
    .param p0, "state1"    # Lccsanandroidx/lifecycle/Lifecycle$State;
    .param p1, "state2"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private moveToState(Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 2
    .param p1, "next"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 135
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 139
    iget-boolean v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iput-boolean v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 145
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 147
    return-void

    .line 140
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 142
    return-void
.end method

.method private popParentState()V
    .locals 2

    .line 202
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method private pushParentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 206
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method private sync()V
    .locals 4

    .line 325
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 326
    .local v0, "lifecycleOwner":Lccsanandroidx/lifecycle/LifecycleOwner;
    if-eqz v0, :cond_3

    .line 330
    :goto_0
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 331
    iput-boolean v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 333
    iget-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    iget-object v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v2, v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->backwardPass(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v1}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->newest()Ljava/util/Map$Entry;

    move-result-object v1

    .line 337
    .local v1, "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    iget-boolean v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    iget-object v3, v3, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_1

    .line 339
    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->forwardPass(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 341
    .end local v1    # "newest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;>;"
    :cond_1
    goto :goto_0

    .line 342
    :cond_2
    iput-boolean v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 343
    return-void

    .line 327
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static upEvent(Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$Event;
    .locals 3
    .param p0, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 277
    sget-object v0, Lccsanandroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Lccsanandroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 284
    :pswitch_1
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 282
    :pswitch_2
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    .line 280
    :pswitch_3
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V
    .locals 8
    .param p1, "observer"    # Lccsanandroidx/lifecycle/LifecycleObserver;

    .line 169
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$State;->DESTROYED:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->DESTROYED:Lccsanandroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->INITIALIZED:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 170
    .local v0, "initialState":Lccsanandroidx/lifecycle/Lifecycle$State;
    :goto_0
    new-instance v1, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    invoke-direct {v1, p1, v0}, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Lccsanandroidx/lifecycle/LifecycleObserver;Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 171
    .local v1, "statefulObserver":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    iget-object v2, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v2, p1, v1}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 173
    .local v2, "previous":Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;
    if-eqz v2, :cond_1

    .line 174
    return-void

    .line 176
    :cond_1
    iget-object v3, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/lifecycle/LifecycleOwner;

    .line 177
    .local v3, "lifecycleOwner":Lccsanandroidx/lifecycle/LifecycleOwner;
    if-nez v3, :cond_2

    .line 179
    return-void

    .line 182
    :cond_2
    iget v4, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v5, 0x1

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 183
    .local v4, "isReentrance":Z
    :goto_2
    invoke-direct {p0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Lccsanandroidx/lifecycle/LifecycleObserver;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 184
    .local v6, "targetState":Lccsanandroidx/lifecycle/Lifecycle$State;
    iget v7, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v7, v5

    iput v7, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 185
    :goto_3
    iget-object v7, v1, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v7, v6}, Lccsanandroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gez v7, :cond_5

    iget-object v7, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    .line 186
    invoke-virtual {v7, p1}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 187
    iget-object v7, v1, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v7}, Lccsanandroidx/lifecycle/LifecycleRegistry;->pushParentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 188
    iget-object v7, v1, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v7}, Lccsanandroidx/lifecycle/LifecycleRegistry;->upEvent(Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/lifecycle/Lifecycle$Event;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lccsanandroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 189
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 191
    invoke-direct {p0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Lccsanandroidx/lifecycle/LifecycleObserver;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    goto :goto_3

    .line 194
    :cond_5
    if-nez v4, :cond_6

    .line 196
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 198
    :cond_6
    iget v7, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr v7, v5

    iput v7, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 199
    return-void
.end method

.method public getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 239
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mState:Lccsanandroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public getObserverCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->size()I

    move-result v0

    return v0
.end method

.method public handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 130
    invoke-static {p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->getStateAfter(Lccsanandroidx/lifecycle/Lifecycle$Event;)Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 131
    .local v0, "next":Lccsanandroidx/lifecycle/Lifecycle$State;
    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/LifecycleRegistry;->moveToState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 132
    return-void
.end method

.method public markState(Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 0
    .param p1, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->setCurrentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 109
    return-void
.end method

.method public removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroidx/lifecycle/LifecycleObserver;

    .line 223
    iget-object v0, p0, Lccsanandroidx/lifecycle/LifecycleRegistry;->mObserverMap:Lccsanandroidx/arch/core/internal/FastSafeIterableMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setCurrentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 0
    .param p1, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 118
    invoke-direct {p0, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->moveToState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 119
    return-void
.end method
