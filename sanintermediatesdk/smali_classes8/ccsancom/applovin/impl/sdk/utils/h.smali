.class public Lccsancom/applovin/impl/sdk/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/hardware/SensorEventListener;
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/utils/h$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsanandroid/hardware/SensorManager;

.field private final c:Lccsanandroid/hardware/Sensor;

.field private final d:Lccsancom/applovin/impl/sdk/utils/h$a;

.field private e:F


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/utils/h$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/hardware/SensorManager;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->b:Lccsanandroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/hardware/SensorManager;->getDefaultSensor(I)Lccsanandroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->c:Lccsanandroid/hardware/Sensor;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/h;->d:Lccsancom/applovin/impl/sdk/utils/h$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->b:Lccsanandroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->b:Lccsanandroid/hardware/SensorManager;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/h;->c:Lccsanandroid/hardware/Sensor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p0, v1, v3}, Lccsanandroid/hardware/SensorManager;->registerListener(Lccsanandroid/hardware/SensorEventListener;Lccsanandroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "com.applovin.application_resumed"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->b:Lccsanandroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V

    return-void
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

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->b:Lccsanandroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Lccsanandroid/hardware/SensorManager;->unregisterListener(Lccsanandroid/hardware/SensorEventListener;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/h;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSensorChanged(Lccsanandroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p1, Lccsanandroid/hardware/SensorEvent;->sensor:Lccsanandroid/hardware/Sensor;

    invoke-virtual {v0}, Lccsanandroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    const v0, 0x411cf5c3    # 9.81f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lccsancom/applovin/impl/sdk/utils/h;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v0, v1

    mul-float p1, p1, v1

    add-float/2addr v2, p1

    iput v2, p0, Lccsancom/applovin/impl/sdk/utils/h;->e:F

    const p1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    cmpl-float p1, v2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->d:Lccsancom/applovin/impl/sdk/utils/h$a;

    invoke-interface {p1}, Lccsancom/applovin/impl/sdk/utils/h$a;->c()V

    goto :goto_0

    :cond_0
    const p1, -0x40b33333    # -0.8f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/h;->d:Lccsancom/applovin/impl/sdk/utils/h$a;

    invoke-interface {p1}, Lccsancom/applovin/impl/sdk/utils/h$a;->b()V

    :cond_1
    :goto_0
    return-void
.end method
