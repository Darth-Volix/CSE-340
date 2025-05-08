-- 1. Insert Tony Stark into the account table
INSERT INTO public.account (account_firstname, account_lastname, account_email,account_password) 
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- 2. Update Tony Stark's account_type to 'Admin'
UPDATE public.account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

-- 3. Delete Tony Stark's record
DELETE FROM public.account
WHERE account_email = 'tony@starkent.com';

-- 4. Update GM Hummer description 
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

-- 5. Select make, model, and classification name for 'Sport' vehicles
SELECT public.inventory.inv_make, public.inventory.inv_model, public.classification.classification_name
FROM public.inventory
INNER JOIN public.classification ON public.inventory.classification_id = public.classification.classification_id
WHERE public.classification.classification_name = 'Sport';

-- 6. Update all image paths 
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');