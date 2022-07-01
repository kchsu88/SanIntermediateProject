.class Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceConnectedEvent"
.end annotation


# instance fields
.field final componentName:Lccsanandroid/content/ComponentName;

.field final iBinder:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 0
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .param p2, "iBinder"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Lccsanandroid/content/ComponentName;

    .line 970
    iput-object p2, p0, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Lccsanandroid/os/IBinder;

    .line 971
    return-void
.end method
