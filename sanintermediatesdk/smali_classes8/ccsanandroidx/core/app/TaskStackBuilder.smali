.class public final Lccsanandroidx/core/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/TaskStackBuilder$SupportParentable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lccsanandroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    .line 84
    return-void
.end method

.method public static create(Lccsanandroid/content/Context;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 95
    new-instance v0, Lccsanandroidx/core/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/app/TaskStackBuilder;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method public static from(Lccsanandroid/content/Context;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p0}, Lccsanandroidx/core/app/TaskStackBuilder;->create(Lccsanandroid/content/Context;)Lccsanandroidx/core/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Lccsanandroid/content/Intent;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 1
    .param p1, "nextIntent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextIntent"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0
.end method

.method public addNextIntentWithParentStack(Lccsanandroid/content/Intent;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 2
    .param p1, "nextIntent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextIntent"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getComponent()Lccsanandroid/content/ComponentName;

    move-result-object v0

    .line 140
    .local v0, "target":Lccsanandroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 141
    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->resolveActivity(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/content/ComponentName;

    move-result-object v0

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/TaskStackBuilder;->addParentStack(Lccsanandroid/content/ComponentName;)Lccsanandroidx/core/app/TaskStackBuilder;

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroidx/core/app/TaskStackBuilder;->addNextIntent(Lccsanandroid/content/Intent;)Lccsanandroidx/core/app/TaskStackBuilder;

    .line 147
    return-object p0
.end method

.method public addParentStack(Lccsanandroid/app/Activity;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 3
    .param p1, "sourceActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivity"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "parent":Lccsanandroid/content/Intent;
    instance-of v1, p1, Lccsanandroidx/core/app/TaskStackBuilder$SupportParentable;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, p1

    check-cast v1, Lccsanandroidx/core/app/TaskStackBuilder$SupportParentable;

    invoke-interface {v1}, Lccsanandroidx/core/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 164
    invoke-static {p1}, Lccsanandroidx/core/app/NavUtils;->getParentActivityIntent(Lccsanandroid/app/Activity;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 167
    :cond_1
    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getComponent()Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 171
    .local v1, "target":Lccsanandroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 172
    iget-object v2, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/content/Intent;->resolveActivity(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 174
    :cond_2
    invoke-virtual {p0, v1}, Lccsanandroidx/core/app/TaskStackBuilder;->addParentStack(Lccsanandroid/content/ComponentName;)Lccsanandroidx/core/app/TaskStackBuilder;

    .line 175
    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/TaskStackBuilder;->addNextIntent(Lccsanandroid/content/Intent;)Lccsanandroidx/core/app/TaskStackBuilder;

    .line 177
    .end local v1    # "target":Lccsanandroid/content/ComponentName;
    :cond_3
    return-object p0
.end method

.method public addParentStack(Lccsanandroid/content/ComponentName;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 4
    .param p1, "sourceActivityName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivityName"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    .local v0, "insertAt":I
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-static {v1, p1}, Lccsanandroidx/core/app/NavUtils;->getParentActivityIntent(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 204
    .local v1, "parent":Lccsanandroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_0

    .line 205
    iget-object v2, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    iget-object v2, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Intent;->getComponent()Lccsanandroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroidx/core/app/NavUtils;->getParentActivityIntent(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 211
    .end local v1    # "parent":Lccsanandroid/content/Intent;
    :cond_0
    nop

    .line 212
    return-object p0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TaskStackBuilder"

    const-string v3, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public addParentStack(Ljava/lang/Class;)Lccsanandroidx/core/app/TaskStackBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lccsanandroidx/core/app/TaskStackBuilder;"
        }
    .end annotation

    .line 189
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lccsanandroid/content/ComponentName;

    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1, p1}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/TaskStackBuilder;->addParentStack(Lccsanandroid/content/ComponentName;)Lccsanandroidx/core/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public editIntentAt(I)Lccsanandroid/content/Intent;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Intent;

    return-object v0
.end method

.method public getIntent(I)Lccsanandroid/content/Intent;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    invoke-virtual {p0, p1}, Lccsanandroidx/core/app/TaskStackBuilder;->editIntentAt(I)Lccsanandroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .line 219
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Lccsanandroid/content/Intent;
    .locals 4

    .line 357
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lccsanandroid/content/Intent;

    .line 358
    .local v0, "intents":[Lccsanandroid/content/Intent;
    array-length v1, v0

    if-nez v1, :cond_0

    return-object v0

    .line 360
    :cond_0
    new-instance v1, Lccsanandroid/content/Intent;

    iget-object v2, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/Intent;

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v3

    .line 362
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 363
    new-instance v2, Lccsanandroid/content/Intent;

    iget-object v3, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/Intent;

    invoke-direct {v2, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getPendingIntent(II)Lccsanandroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "flags"
        }
    .end annotation

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/core/app/TaskStackBuilder;->getPendingIntent(IILccsanandroid/os/Bundle;)Lccsanandroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILccsanandroid/os/Bundle;)Lccsanandroid/app/PendingIntent;
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lccsanandroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroid/content/Intent;

    .line 337
    .local v0, "intents":[Lccsanandroid/content/Intent;
    new-instance v1, Lccsanandroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    .line 340
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 341
    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-static {v1, p1, v0, p2, p3}, Lccsanandroid/app/PendingIntent;->getActivities(Lccsanandroid/content/Context;I[Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 344
    :cond_0
    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Lccsanandroid/app/PendingIntent;->getActivities(Lccsanandroid/content/Context;I[Lccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 332
    .end local v0    # "intents":[Lccsanandroid/content/Intent;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsanandroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public startActivities()V
    .locals 1

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/app/TaskStackBuilder;->startActivities(Lccsanandroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public startActivities(Lccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lccsanandroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsanandroid/content/Intent;

    .line 289
    .local v0, "intents":[Lccsanandroid/content/Intent;
    new-instance v1, Lccsanandroid/content/Intent;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v1, v3}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    move-result-object v1

    aput-object v1, v0, v2

    .line 291
    iget-object v1, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-static {v1, v0, p1}, Lccsanandroidx/core/content/ContextCompat;->startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Lccsanandroid/content/Intent;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 293
    .local v1, "topIntent":Lccsanandroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 294
    iget-object v2, p0, Lccsanandroidx/core/app/TaskStackBuilder;->mSourceContext:Lccsanandroid/content/Context;

    invoke-virtual {v2, v1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 296
    .end local v1    # "topIntent":Lccsanandroid/content/Intent;
    :cond_0
    return-void

    .line 284
    .end local v0    # "intents":[Lccsanandroid/content/Intent;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
