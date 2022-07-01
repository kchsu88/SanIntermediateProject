.class public Lccsancom/google/android/gms/common/api/ResolvableApiException;
.super Lccsancom/google/android/gms/common/api/ApiException;


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/google/android/gms/common/api/ApiException;-><init>(Lccsancom/google/android/gms/common/api/Status;)V

    .line 2
    return-void
.end method


# virtual methods
.method public getResolution()Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/ResolvableApiException;->mStatus:Lccsancom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lccsancom/google/android/gms/common/api/Status;->getResolution()Lccsanandroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public startResolutionForResult(Lccsanandroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/ResolvableApiException;->mStatus:Lccsancom/google/android/gms/common/api/Status;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/gms/common/api/Status;->startResolutionForResult(Lccsanandroid/app/Activity;I)V

    .line 4
    return-void
.end method
