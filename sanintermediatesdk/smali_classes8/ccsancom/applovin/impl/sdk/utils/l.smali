.class public Lccsancom/applovin/impl/sdk/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/hardware/SensorEventListener;
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Lccsanandroid/hardware/SensorManager;

.field private final d:Lccsanandroid/hardware/Sensor;

.field private final e:Lccsanandroid/hardware/Sensor;

.field private final f:Lccsancom/applovin/impl/sdk/k;

.field private g:[F

.field private h:F


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/l;->f:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/hardware/SensorManager;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->c:Lccsanandroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lccsanandroid/hardware/SensorManager;->getDefaultSensor(I)Lccsanandroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/utils/l;->d:Lccsanandroid/hardware/Sensor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/hardware/SensorManager;->getDefaultSensor(I)Lccsanandroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->e:Lccsanandroid/hardware/Sensor;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->dS:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->a:I

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->dR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->b:F

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.application_resumed"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->c:Lccsanandroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->f:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->c:Lccsanandroid/hardware/SensorManager;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/l;->d:Lccsanandroid/hardware/Sensor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lccsancom/applovin/impl/sdk/utils/l;->a:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p0, v1, v3}, Lccsanandroid/hardware/SensorManager;->registerListener(Lccsanandroid/hardware/SensorEventListener;Lccsanandroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->f:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->c:Lccsanandroid/hardware/SensorManager;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/l;->e:Lccsanandroid/hardware/Sensor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lccsancom/applovin/impl/sdk/utils/l;->a:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p0, v1, v3}, Lccsanandroid/hardware/SensorManager;->registerListener(Lccsanandroid/hardware/SensorEventListener;Lccsanandroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->h:F

    return v0
.end method

.method public c()F
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->g:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    aget v0, v0, v1

    const v1, 0x411cf5c3    # 9.81f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public onAccuracyChanged(Lccsanandroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/l;->c:Lccsanandroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/l;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSensorChanged(Lccsanandroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Lccsanandroid/hardware/SensorEvent;->sensor:Lccsanandroid/hardware/Sensor;

    invoke-virtual {v0}, Lccsanandroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/l;->g:[F

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lccsanandroid/hardware/SensorEvent;->sensor:Lccsanandroid/hardware/Sensor;

    invoke-virtual {v0}, Lccsanandroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->h:F

    iget v1, p0, Lccsancom/applovin/impl/sdk/utils/l;->b:F

    mul-float v0, v0, v1

    iput v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->h:F

    iget-object v1, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iget-object p1, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lccsancom/applovin/impl/sdk/utils/l;->h:F

    :cond_1
    :goto_0
    return-void
.end method
