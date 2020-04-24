def before_all(context):
	print(f"Running before all always")

def before_feature(context, feature):
	print(f"Running before all features")

def before_scenario(context, scenaio):
	print(f"Running before all scenaios")

def before_step(context, step):
	print(f"Running before all steps")

def before_tag(context, tag):
	print(f"Running before all tags")

def after_tag(context, tag):
	print(f"Running after all tags")

def after_step(context, step):
	print(f"Running after all steps")

def after_scenario(context, scenaio):
	print(f"Running after all scenaios")

def after_feature(context, feature):
	print(f"Running after all features")

def after_all(context):
	print(f"Running after all")