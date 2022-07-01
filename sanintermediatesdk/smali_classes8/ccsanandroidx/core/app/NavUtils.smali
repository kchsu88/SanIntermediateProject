.class public final Lccsanandroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method public static getParentActivityIntent(Lccsanandroid/app/Activity;)Lccsanandroid/content/Intent;
    .locals 6
    .param p0, "sourceActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivity"
        }
    .end annotation

    .line 129
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getParentActivityIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "result":Lccsanandroid/content/Intent;
    if-eqz v0, :cond_0

    .line 134
    return-object v0

    .line 137
    .end local v0    # "result":Lccsanandroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "parentName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 141
    :cond_1
    new-instance v2, Lccsanandroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 143
    .local v2, "target":Lccsanandroid/content/ComponentName;
    :try_start_0
    invoke-static {p0, v2}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "grandparent":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 145
    invoke-static {v2}, Lccsanandroid/content/Intent;->makeMainActivity(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_2
    new-instance v4, Lccsanandroid/content/Intent;

    invoke-direct {v4}, Lccsanandroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v1

    .line 147
    .end local v3    # "grandparent":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NavUtils"

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v1
.end method

.method public static getParentActivityIntent(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "componentName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 195
    invoke-static {p0, p1}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "parentActivity":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 199
    :cond_0
    new-instance v1, Lccsanandroid/content/ComponentName;

    .line 200
    invoke-virtual {p1}, Lccsanandroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v1, "target":Lccsanandroid/content/ComponentName;
    invoke-static {p0, v1}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "grandparent":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 203
    invoke-static {v1}, Lccsanandroid/content/Intent;->makeMainActivity(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v3

    goto :goto_0

    .line 204
    :cond_1
    new-instance v3, Lccsanandroid/content/Intent;

    invoke-direct {v3}, Lccsanandroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v3

    :goto_0
    nop

    .line 205
    .local v3, "parentIntent":Lccsanandroid/content/Intent;
    return-object v3
.end method

.method public static getParentActivityIntent(Lccsanandroid/content/Context;Ljava/lang/Class;)Lccsanandroid/content/Intent;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sourceActivityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lccsanandroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 168
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lccsanandroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "parentActivity":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 173
    :cond_0
    new-instance v1, Lccsanandroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v1, "target":Lccsanandroid/content/ComponentName;
    invoke-static {p0, v1}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "grandparent":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 176
    invoke-static {v1}, Lccsanandroid/content/Intent;->makeMainActivity(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v3

    goto :goto_0

    .line 177
    :cond_1
    new-instance v3, Lccsanandroid/content/Intent;

    invoke-direct {v3}, Lccsanandroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v3

    :goto_0
    nop

    .line 178
    .local v3, "parentIntent":Lccsanandroid/content/Intent;
    return-object v3
.end method

.method public static getParentActivityName(Lccsanandroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivity"
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getComponentName()Lccsanandroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/core/app/NavUtils;->getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParentActivityName(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "componentName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 241
    .local v0, "pm":Lccsanandroid/content/pm/PackageManager;
    const/16 v1, 0x80

    .line 244
    .local v1, "flags":I
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 245
    or-int/lit16 v1, v1, 0x200

    goto :goto_0

    .line 247
    :cond_0
    or-int/lit16 v1, v1, 0x200

    .line 252
    :goto_0
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_1

    .line 253
    const/high16 v2, 0x100c0000

    or-int/2addr v1, v2

    goto :goto_1

    .line 256
    :cond_1
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 257
    const/high16 v2, 0xc0000

    or-int/2addr v1, v2

    .line 261
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->getActivityInfo(Lccsanandroid/content/ComponentName;I)Lccsanandroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 262
    .local v2, "info":Lccsanandroid/content/pm/ActivityInfo;
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 263
    iget-object v3, v2, Lccsanandroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 264
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 265
    return-object v3

    .line 268
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Lccsanandroid/content/pm/ActivityInfo;->metaData:Lccsanandroid/os/Bundle;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 269
    return-object v4

    .line 271
    :cond_4
    iget-object v3, v2, Lccsanandroid/content/pm/ActivityInfo;->metaData:Lccsanandroid/os/Bundle;

    const-string v5, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v3, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "parentActivity":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 273
    return-object v4

    .line 275
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_6
    return-object v3
.end method

.method public static navigateUpFromSameTask(Lccsanandroid/app/Activity;)V
    .locals 4
    .param p0, "sourceActivity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceActivity"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lccsanandroidx/core/app/NavUtils;->getParentActivityIntent(Lccsanandroid/app/Activity;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "upIntent":Lccsanandroid/content/Intent;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, v0}, Lccsanandroidx/core/app/NavUtils;->navigateUpTo(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;)V

    .line 92
    return-void

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static navigateUpTo(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;)V
    .locals 2
    .param p0, "sourceActivity"    # Lccsanandroid/app/Activity;
    .param p1, "upIntent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceActivity",
            "upIntent"
        }
    .end annotation

    .line 108
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->navigateUpTo(Lccsanandroid/content/Intent;)Z

    goto :goto_0

    .line 111
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 112
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    .line 115
    :goto_0
    return-void
.end method

.method public static shouldUpRecreateTask(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;)Z
    .locals 2
    .param p0, "sourceActivity"    # Lccsanandroid/app/Activity;
    .param p1, "targetIntent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceActivity",
            "targetIntent"
        }
    .end annotation

    .line 60
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->shouldUpRecreateTask(Lccsanandroid/content/Intent;)Z

    move-result v0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
